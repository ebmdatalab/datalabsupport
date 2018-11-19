#!/usr/bin/env python
import os
import sys
import warnings

import dotenv

IGNORE_MODULES = 'html5lib'  # See #18
warnings.filterwarnings("ignore", module=IGNORE_MODULES)

if __name__ == '__main__':
    # We can't do read_dotenv('../environment') because that assumes that when
    # manage.py we are in its current directory, which isn't the case for cron
    # jobs.
    env_path = os.path.join(
        os.path.dirname(os.path.realpath(__file__)),
        '..', 'environment'
    )

    dotenv.read_dotenv(env_path, override=True)

    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'datalabsupport.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)
