from fabric.api import run, sudo, put
from fabric.api import prefix, warn, abort
from fabric.api import settings, task, env, shell_env
from fabric.contrib.files import exists
from fabric.context_managers import cd
from fabric.contrib.project import rsync_project

from datetime import datetime
import json
import os
import requests
import sys

import dotenv

dotenv.read_dotenv('environment')


env.hosts = ['smallweb1.ebmdatalab.net']
env.forward_agent = True
env.colorize_errors = True
env.user = 'root'

environments = {
    'live': 'datalabsupport',
    #'staging': 'retractobot_staging'
}

def make_directory():
    run('mkdir -p %s' % (env.path))

def venv_init():
    run('[ -e venv ] || python3.5 -m venv venv')


def pip_install():
    with prefix('source venv/bin/activate'):
        run('pip install -q -r datalabsupport/requirements.txt')

def update_from_git():
    # clone or update code
    if not exists('datalabsupport/.git'):
        run("git clone -q git@github.com:ebmdatalab/datalabsupport.git")
    else:
        with cd("datalabsupport"):
            run("git pull -q")

def setup_cron():
    run('cp %s/datalabsupport/deploy/crontab-%s /etc/cron.d/' % (env.path, env.app))

def run_migrations():
    if env.environment == 'live':
        with prefix('source venv/bin/activate'):
            run('cd datalabsupport/datalabsupport/ && python manage.py migrate --settings=datalabsupport.settings')
    else:
        warn("Refusing to run migrations in staging environment")

@task
def deploy(environment, branch='master'):
    if environment not in environments:
        abort("Specified environment must be one of %s" %
              ",".join(environments.keys()))
    env.app = environments[environment]
    env.environment = environment
    env.path = "/var/www/%s" % env.app
    env.branch = branch

    # assumes these are manually made on the server first time setup, and added
    # as repository keys to github

    make_directory()
    with cd(env.path):
        venv_init()
        update_from_git()
        pip_install()
        run_migrations()
        setup_cron()
