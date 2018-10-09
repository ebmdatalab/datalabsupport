Received: from CWLP265MB1698.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:5e::32)
 by CWLP265MB1699.GBRP265.PROD.OUTLOOK.COM with HTTPS via
 CWLP265CA0380.GBRP265.PROD.OUTLOOK.COM; Thu, 4 Oct 2018 17:04:18 +0000
Received: from CWLP265CA0158.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:52::26)
 by CWLP265MB1698.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:35::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1207.18; Thu, 4 Oct
 2018 17:04:17 +0000
Received: from AM5EUR02FT022.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e1e::202) by CWLP265CA0158.outlook.office365.com
 (2603:10a6:401:52::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1207.20 via Frontend
 Transport; Thu, 4 Oct 2018 17:04:17 +0000
Authentication-Results: spf=softfail (sender IP is 163.1.154.216)
 smtp.mailfrom=gmail.com; UniOxfordNexus.mail.onmicrosoft.com; dkim=fail
 (signature did not verify)
 header.d=gmail.com;UniOxfordNexus.mail.onmicrosoft.com; dmarc=fail
 action=none header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 163.1.154.216 as permitted sender)
Received: from smtp.nexus.ox.ac.uk (163.1.154.216) by
 AM5EUR02FT022.mail.protection.outlook.com (10.152.8.138) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.1207.19 via Frontend Transport; Thu, 4 Oct 2018 17:04:17 +0000
Received: from relay13.mail.ox.ac.uk (129.67.1.166) by HUB03.ad.oak.ox.ac.uk
 (163.1.154.216) with Microsoft SMTP Server (TLS) id 14.3.382.0; Thu, 4 Oct
 2018 18:03:57 +0100
Received: from mail-io1-f42.google.com ([209.85.166.42])	by
 relay13.mail.ox.ac.uk with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)	(envelope-from <seb.bacon@gmail.com>)	id 1g872b-0007bG-gy	for
 ebmdatalab@phc.ox.ac.uk; Thu, 04 Oct 2018 18:03:57 +0100
Received: by mail-io1-f42.google.com with SMTP id m16-v6so4284789ioj.4
        for <ebmdatalab@phc.ox.ac.uk>; Thu, 04 Oct 2018 10:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=4suSLkiyJpif5D73ex8sDJ/fe+rij2F7MJrQj3Y0X2E=;
        b=NfL3x8TPC62xhAdRviLJFwFxTZyuMq8evAa9wW80HdZGvqA0qSvN+eVTyxPAARRd2g
         1gBi4onx/+XMLdFLpV6CGrpwLIW7MfeUjjHhIXd+a6+S/iZ4hItL0UN7mibZyU6dcStz
         HdQUkg++D32Ky8iVaQXo6s2//5arGoRwHy/qsoDGsTrNj8ODsvctCR/PXJ0n/TLCTUZ4
         yrS775RKTj5ztA/iRH9vGRl9yhcAcYn1bUlNAPWYundk2ceAGlUR5zpohJDyttw717sK
         fT59LB9XTIwJnyz4lGKvFmUkARKAUgzxe58fC/GjSOKYD+aEpVfwK1OputoGJ838Sj4N
         ORnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=4suSLkiyJpif5D73ex8sDJ/fe+rij2F7MJrQj3Y0X2E=;
        b=s7ek55YlW/OPT9t5otghgV3thpYmbxB1LBIqCTuGIQVfVA7KVqF5K/9FF0+8hzOsPo
         fjuYGeawWmHEG+SFcj2EsNCWHAP+BcXosf3D2JUaOMF8s9lVeGo7tqh0hRs8GieKy0yI
         E0m64lkcJdQxrmO0rkLxPf37pX/5KJXC6i2/38tZSt2vystqOah1e6M8PbW5BcI38n2j
         Udi8IWwpNWrQNMe1EiY3DFn9+qwpOrhvDhmddLlX8xrA528JqkX5v97nxqaB1Y/DIn7V
         UOARgg57UX3IW82J0tJg/ocNOR4HkF8X0EPaUw9LCXGPfgG6KHk+aR8iYcYoT9XtN1PR
         dZ8g==
X-Gm-Message-State: ABuFfojdvEc4tIy5A3RNPNJzOXUHpkx9Ih7cyJiLTc3Xbn89odhfCmmb
        d+ms6o+ZfG048pW7Or7af0kCfz96ztXJ6qdDoafGx9Bb
X-Google-Smtp-Source: ACcGV60HSqbNW0JSny+xENnXCeUFMm9/gkpLDK4aQDDF7GQkbzRtlpPR/pixRY/jKy0QUQ+y6ypcMy6/1V0nIforRfE=
X-Received: by 2002:a6b:348f:: with SMTP id b137-v6mr4730179ioa.134.1538672635612;
 Thu, 04 Oct 2018 10:03:55 -0700 (PDT)
Reply-To: <seb.bacon@gmail.com>
From: Seb Bacon <seb.bacon@gmail.com>
Date: Thu, 4 Oct 2018 18:03:44 +0100
Message-ID: <ACwNqZkrRDYA9C3A9mBNB=r1K962hYCwZ0WRQT0jExsotaF-nQ@mail.gmail.com>
Subject: adieu
To: Seb Bacon - ebmdatalab <ebmdatalab@phc.ox.ac.uk>
Content-Type: multipart/alternative; boundary="000000000000df334e05776a23d5"
X-NTG-DKIM-verify: pass
X-Oxmail-Spam-Status: score=0.0 tests=FREEMAIL_FROM,HTML_MESSAGE
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             (seb.bacon[at]gmail.com)
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Oxmail-Spam-Level: /
Return-Path: seb.bacon@gmail.com
X-OrganizationHeadersPreserved: HUB03.ad.oak.ox.ac.uk
X-MS-Exchange-Organization-ExpirationStartTime: 04 Oct 2018 17:04:17.5499
 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: Original Submit
X-MS-Exchange-Organization-ExpirationInterval: 2:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: Original Submit
X-MS-Exchange-Organization-Network-Message-Id: 740a525d-6d75-497c-6a18-08d62a1b6b7f
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-CrossPremisesHeadersPromoted: AM5EUR02FT022.eop-EUR02.prod.protection.outlook.com
X-CrossPremisesHeadersFiltered: AM5EUR02FT022.eop-EUR02.prod.protection.outlook.com
X-Forefront-Antispam-Report:
 CIP:163.1.154.216;IPV:NLI;CTRY:GB;EFV:NLI;SFV:NSPM;SFS:(2980300002)(3190300001)(189003)(199004)(221733001)(336012)(156004)(486006)(5000100001)(73972006)(246002)(59536001)(2860700004)(44832011)(55446002)(19618925003)(305945005)(476003)(126002)(116002)(73392003)(26005)(8576002)(71190400001)(61266001)(86362001)(498394004)(33964004)(5660300001)(22416003)(3450700001)(83322999)(7116003)(6666003)(84326002)(106466001)(356003)(76482006)(105596002)(87572001)(98316002)(82202002)(6916009)(8676002)(43066004)(564344004)(95326003)(93516011)(8936002)(16586007)(1096003)(42186006)(3480700004)(217283001)(204593002)(220243001);DIR:INB;SFP:;SCL:1;SRVR:CWLP265MB1698;H:smtp.nexus.ox.ac.uk;FPR:;SPF:SoftFail;LANG:en;PTR:hub03.nexus.ox.ac.uk;MX:1;A:1;
X-Microsoft-Exchange-Diagnostics: 1;AM5EUR02FT022;1:Oo2h+SN6HBjBdAfcemk9WMORP1Ko+ULrnPbGxOYrWXyob4qaspaapSBAQSaY5iTcvVyLRYd2YU0juZ2Ax1D51wBEb7iZO6AKeR6FRnnVCT9hi2w9OSDg4AsnmPSwZB0O
X-MS-Exchange-Organization-AuthSource: HUB03.ad.oak.ox.ac.uk
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: nexus.ox.ac.uk
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 740a525d-6d75-497c-6a18-08d62a1b6b7f
X-Microsoft-Antispam:
 BCL:0;PCL:0;RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(8559020)(8990200)(5600074)(711020)(2017052603328)(7153060);SRVR:CWLP265MB1698;
X-Microsoft-Exchange-Diagnostics:
 1;CWLP265MB1698;3:wp04anaEK9LosMXh91cCsIvn5/28BYfjb8kK5FlA6DLNDMfVmyC7oQ20TJefgMEY8dt1uB1U5ZzRYg730mTm45xEdtr6tyJQqtUz9VZKVy7HxmjFtoJOSk0To00fNHQHUEBW0IChj+N5f64CwmZ/ubT+TFZnv8AmElO9yTzWwzQZrWlp71W9JiHaM0ix94pELJysWcPbuk9haW4jEwRcuY3h6aGcfNLjStpFqMbH/S5kgEUMcoGpQrR0OONCBn47jQSOJHsa9Y+JaCznBxGzvPMkMnOKnQa+TYovWHDFw1ErM8e8bMVBIHCNH/pr51AZr1UjqIsaEf19a9ZiAgGAMKz44zIeafcL1ab80wsUqus=;25:Pf//2ch8gocx8NRvrzIhNPJ2yOI8qoRJTWP1IMNDNnV6aeBmohn/vXnElEDPdAMWutj3xb4FP/uYbwib1NywJS8jFKUXePs3ci0b8uPX0P7k3Lsp4RKQCVaieQPrWB/BgoGO3CSvAxysiafXFzabeBFE2719SG/8S8J+/dw9wFRiCRDZrmItr+Kw9jUNoa1nzOUDFTMzkCfkkqiH0/ZndpblB8IhKZ5YlDSR7GUcHeo=;31:Yb88D/eTmLmKjfIkCh4rNE2QUYq37qrQhxC0leUFhxsLTuqtD3gUE5cXyV91M6stNrvQv8A/wRvmTLQyB1jhw1UVhf7R5biAhn2AejTDK2PYqy6uMUL5Z68e6869Dh14
X-MS-TrafficTypeDiagnostic: CWLP265MB1698:
X-Microsoft-Exchange-Diagnostics:
 1;CWLP265MB1698;20:+FJdDjoo9jgl85g4XiCtu1Tlf89xUOetbx144YmcJX/0kWYkHLPppJBFlVpNxlnXdIiT0usL2Plwjnp29kp3pd8jg6f3gclck3vTFnZW4NsSjp+HR0RboHB0hFf8gD62nD9DwP3ShkUxSF+DBiy08kCPxjSZmNmG3Cj0zmfd8zXx4CQlb0pyFTARC54x+5m+ii6PApe8sm4AvBF2CsTZgMjgFk1HRK5SIYAPOtjzYfyZw6Elyjh7mIbhgzbs9J/4kf0ZNu0lBubFyZnwizvR7ubjKV5cXsBf1AimVXDcEakJOTCBAY4ZUy1t6Z/fglGwBOLHDPCYwhUMYU2r34UZDEYc4Am1A4oz9Mjox1Yw2+qTFqXkt/GJaprqoMAYKy8C9vLdixDDF1TNCZG5glXBKkFAsvyKtd0JtMeZTmWdA4D0PRuHfNnDAYAMOC15fUc98EgR1ig7wMhyaptRC/na/pRtFvoPq9j45ePuHAyTSx6YsqfN8ZhC1tjW7pTd/Kye;4:AyD84mV/uPWP2gQPTvXU/0B9GX8yyBUoHmRNvV3mSdpj3Kef4pByC1XoWINf8pV9QANPaRSK5i0J/WFNWWvHNEVExUJxo5+gsIIgetBNt5qk3XRWDQrTzVzWVmBh3t1M0OWcjkA4Vy9hyKjKOwrVWa9AADJfVZceSZrBpsN9vJU=
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test:
 BCL:0;PCL:0;RULEID:(2018062399030)(2018011200283)(2401047)(8121501046)(52410047)(2018011210174)(2018011211064)(2018011212028)(2018011213028)(2018011214028)(2018011215028)(2018011216028)(2018011217028)(2018011218028)(2018011219092)(2018011220252)(2018011221063)(2018011222027)(2018011223027)(2018011224027)(2018011225035)(2018011229035)(2018011232269)(2018011233052)(2018021202149)(98810176)(98804176)(2018021203149)(98815176)(823300264)(823350442)(823411253)(3002001)(3231355)(901025)(902075)(913088)(7045084)(944501410)(9300000249)(9301004277)(9301036083)(52103095)(52105095)(52106170)(52408095)(98821027)(98822027)(52401380)(52601095)(52505095)(52406095)(52305095)(52206095)(88862240)(88860193)(10201501046)(12181506113)(93006095)(93003095)(1610001)(8301001075)(8301003183)(201708071742011)(7699051);SRVR:CWLP265MB1698;BCL:0;PCL:0;RULEID:;SRVR:CWLP265MB1698;
X-MS-Exchange-Organization-SCL: 1
X-Microsoft-Exchange-Diagnostics:
 =?us-ascii?Q?1;CWLP265MB1698;23:HH++5TIRWgj7zoEn3NhMejQCYSguSsVA4js3rPprj?=
 =?us-ascii?Q?NmGIwEkU+R3w/Vuj7R5uvBAwirwKyuYPxBSuPRehEWIs+7tGfsovfTgBFGDj?=
 =?us-ascii?Q?4Cnioa8tLTBUgPfaL3tcvb3OXwavA2g4AAexPcGSjvJCI0i2kNds7ApPrQ2E?=
 =?us-ascii?Q?6RVyDmi/mTR26Cnj9kcre+Wo+NVqOekhr008bceUQYioqS1DMFg0NIQGfvJr?=
 =?us-ascii?Q?VSmtUHmJOZoRL6JYHyQg5gZbMq98iJBD80/1lRIcrON8jsbSOUWfcrBXTuFw?=
 =?us-ascii?Q?n+oFjbGDqJLJCTYYWK4JD7yKzf7l4oYRz4QphDHQfBIjnr5waitYPxVGk1K+?=
 =?us-ascii?Q?omawgmDQfjdefWVrvCOVbvWUPYqZ9N01S+PZgBr1WF60znWsmCt6xk5bqRuY?=
 =?us-ascii?Q?YS0eAqx7+rX+dGQgS8p3Mcc5lmS5v6S27mbIrLjHHRa5luWHq0R0/fGAscg7?=
 =?us-ascii?Q?OeSP5FIF0jS4hU7CBzCIDnAaeRcrYpskmbD36TQ/NdK32pxYV/elF+cRNnT2?=
 =?us-ascii?Q?lmY5GN9JytemtS+Hr34vQec2wyrJrbmCPXSMAty5LC3ZvxTCR9Paxd9NzrE9?=
 =?us-ascii?Q?a51DuE0+3kStg6F2lTPvFO+Ir01PfGkmmhuIW6Qj1xtQfspAsQZfdARhR9GV?=
 =?us-ascii?Q?eEj0TRkdwFMPLzkwhc48Uoxclwb1HOVKXw301JJIm5a43EWCD/cZBDQr1BhG?=
 =?us-ascii?Q?clhU5a++pYKLxDu9DNFSeEWaFXmtYsDTcOshZJX4deESJLeCFzUM+FDv+3sU?=
 =?us-ascii?Q?OjYSuvEv/U4/+s16exVhMOSHOnSG+TWWSIHSJ1FA/0R2Z9gfWB4Kj+ODRBlK?=
 =?us-ascii?Q?4IrbBH5IyMhd+MeFBE/LUqHlU7OCDUPz4tK9zqenrVQfO+KUNfmaIvzV9Qhr?=
 =?us-ascii?Q?hyLLw5dYXLX2yXk3lr01QDuLaUA0wlAY4zcm2iyAhs+SZt46c+MEhnAzAAw7?=
 =?us-ascii?Q?o4QpF3SiXV0IFFR4cVVuy7O+RWRCjdogG2maNjw/dfLDBoOWboYDiwrExVE0?=
 =?us-ascii?Q?6xlxHO9kxdL+nreIcJfBMyIPcOaqHQz0U6BDvFptm8i8ekfw6i506nvOOrPz?=
 =?us-ascii?Q?4GF7H333UFaGVzHFrcYR9cpfDEhrF0WygrkCPViTJcvK3+34Xoyy4cEPD+VQ?=
 =?us-ascii?Q?5y7yoCB2JAy5ny6Tfw+zxjEn46yG6K+Cykt5zMOv1my2E9NUJIwGttKewIY2?=
 =?us-ascii?Q?6Duwb7nPRNqCRe9ANKVSfKzm7FEzFg5abEetN5QlZCPl9kzq9oRE8B3QFIA1?=
 =?us-ascii?Q?wkhXPBWRBLQ6UacYNWIwg70tngsndUMkOSMFbUvQCzg0vW8jWrwGFtrjfJ6S?=
 =?us-ascii?Q?yit6LkvbcTzIwe8P26tRtA=3D?=
X-Microsoft-Antispam-Message-Info:
 xrCO/oiWxQD1lv8Gr4A71lYbwHZqNrHhqK4hk6EeVORO1DuPxZadee56vRVIGuzBEKeKemopO4wFY8BA5/4X+s4FkmYuBuuA+u78S+i/y1jkQGX9l9ZP3QYR00pIHawgCGAKfHb6U6d3QieJe9TNEnUqL2KrbI/W/7FzOQfmjPmOBMJzQEng7Dy1qEBSud44Ww+63UjEdpv9kIq252IBGrnOXz9woeJpWCuQJEbffOBmAhQ7Vz74yvBlcC1GfcogYdy1q16sBUmMbjI1UsuCyGZiK/kQnNU1DfeSJVfgSkM5lwc3iLv07vRisTXAoPdCPX1EGrGAvSANTAs+E3CQmA8m3ijRvvhpkRJGqQa22/cXsjdP6sWOU6GoGu0201QWFQ3v6Xq8qsmHBxMwGWJu3TwiTRwok9Iiw8DNAXdisY3GaU58D5v36S5tC29ERrUuGs8zuUrIOFlo1MzrBXm6+qI4urOv0w0TI2Jz42dgDtl0Wk1yh532+I3g8n3E3sFuIOunDxqe2mU+4Lg36jEI6YvuNHMJgEafQiFlnq6v5I0=
X-Microsoft-Exchange-Diagnostics:
 1;CWLP265MB1698;6:Kdi8UxqbSrQ+fWq9mG5+MELM+N9sk1Zlaipx295tQMNb+ze+xKm22lcKiadhaclto90N4cjSljNoNVGPKPSBu8HFhlEmXeBYu+mw55UXJ0DXzlkBNvWBk7d+4ZljniHp8C5wjuWEhFru+CByKsl9QAfCDNxRWwkqX+pZD/x1NzmMIgayP1WxmMruSoKL4PxBucIssVVLkOEceVKUgQyPlUiaEyKD6XLK0sX8G25z1fvl2EOIVpFxS+4ixhjhICZGMHyXYAGLHhecVSAJGk0btuBhS1FQxCvLnwc2pOdNRIzPd1CpBWztB2Z+XQIzJ91pFzE6tC9F7Lr9TlZH3aJcAUCPiM+XzspHJgSCOgCANNs=;5:zg6kvIb+Ug26wx+6axrvzNQGH1Zkrnyqk10AimZPlhR1SUHniylSc9AVjtOyj2WjBo6cUa2PC/UaLMHW4flcXnybF9/Gp2uflUTLgxBuxI3HAaH8bZ2q2VitCSR/ZHrWeOD1ciJZSy7HLpoB4Wd2BBA+950sKuERpjbQPNwytus=;7:pGc7CGAymMlzZKXErVANAlMtgWyC+VHcevkKNQO3zMMvYHxMKfTWtvLlhE8uakTInZzjtSzQY09YXL3kwqeseu8csBmA6ei+YXiYprFGjekepY5Wyj+vIRtS6f2qEDGkDsw0JNKfA8zxLVVQoH/byZfqPlPtXaOT+D2mdlF/4wfs9IYoHvAmxFyA87Wm8dF69C4s5yKo0dhBTWRP6Zq2UTkE5LDLkz5GXL1yeaEGkL5bniG445IbFfTvRHoap94p
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2018 17:04:17.3155
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 740a525d-6d75-497c-6a18-08d62a1b6b7f
X-MS-Exchange-CrossTenant-Id: cc95de1b-97f5-4f93-b4ba-fe68b852cf91
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=cc95de1b-97f5-4f93-b4ba-fe68b852cf91;Ip=[163.1.154.216];Helo=[smtp.nexus.ox.ac.uk]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB1698
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.0576170
X-MS-Exchange-Processed-By-BccFoldering: 15.20.1207.000
X-Microsoft-Exchange-Diagnostics:
        1;CWLP265MB1699;27:YwvmUKVQG7vOmyOmY4Qn44hioqxSV8SuLSrxxGwS9i2TI3vbezqKuJWdDnsU2+vyNRVlFM8MAkIZoJBg+j8OyfM6PqxITttAXqsg1qzInJHMHYfEp5+8aFIlpCpNQw4wvhPb+zRttK5B93loGz07/TMNYDXmQJ9fDYpwj5Q0DtFXMoiGuDBPxRJquavnnnNzhEye1G+8izLva+bocmvk0VqF3V+IEkNSk/brrtG+gIw+ijgTx8ZaU1Eth9XK4nfFCA98TJqbHwSwPQE1Idl9pSn5brVDO26n3MENGo5oRd1q657epaEwNFGSdT9aSgBeNMzutBTKx++m/MqX1j0O0epxtupmt8OW7YyBeYENdyvcnsZGCtA+2uBplLlwHXsLXbQhMMV9HibF0SqSgyzcQA==
X-Microsoft-Antispam-Mailbox-Delivery:
        ucf:0;jmr:0;ex:0;auth:0;dest:I;ENG:(20160514016)(750119)(520011016)(944506303)(944626516);
X-Microsoft-Antispam-Message-Info:
        nrhgGTf+DvfRv27jev8tYTcQk49CBRk1IrhfKVM/GlLmG2SSBq9zR7dNnq0l0HQzpMW1xzQ/HLXvrZef8kgATERmyd645L7vdJbJormApaJmOixIpp6x3tsI2Lp8gdU5Ee1rjbGUPTSSxVyCbgGWkdFRHXIXCeJ36PDkR2UrqCkV+XMPn5ivjMSBqyGQSnXxBZftT35pmVlq5K58tPrPH9+h5FYh3JsNEd3GEqZroYQaW+6u2fFdnRHTizv/dWmQkXBneNrR0EMGjknleq1vOyx3NqpnTQ4DmmLffz6qasDBzxVd+zoG29xJ5NXC/yVmJp5Wyho+abUgy7x6XELExvC2JQ62ZIhKDq/nQzqjTxkOi36yQ4TegRNGtx/Aulb7KnKMRNfIadE5IxFHMwm4lfpn11Et4nd1++Ky/X7MKGlRcHwu/8yV/0+Z+zZW5kNLeEBIg9RKyfTBYsBpKgVFB+Dv9lGbbFF6GT0nNx+ZfBX3hfvp9gLZcX6QAbpPN76ysIxCz+0XMep6ol/YGFp9wIrWC8Htli7aLf2xTJ4XzUFYyWkHzma0JQtxZbGd1nNoJaqESD0q7l8Qt65xnCF+Pjvf8VQlylfzjMKmUj6a78h43Q2Eht9PJfIOy25VOqLf
MIME-Version: 1.0

--000000000000df334e05776a23d5
Content-Type: text/plain; charset="UTF-8"

farewell

--000000000000df334e05776a23d5
Content-Type: text/html; charset="UTF-8"

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><div dir="ltr">farewell</div>

--000000000000df334e05776a23d5--
