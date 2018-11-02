Received: from CWLP265MB1697.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:4e::31)
 by CWLP265MB1699.GBRP265.PROD.OUTLOOK.COM with HTTPS via
 CWLP265CA0211.GBRP265.PROD.OUTLOOK.COM; Fri, 2 Nov 2018 11:51:52 +0000
Received: from LO2P265CA0127.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:9f::19)
 by CWLP265MB1697.GBRP265.PROD.OUTLOOK.COM (2603:10a6:401:35::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1294.21; Fri, 2 Nov
 2018 11:51:51 +0000
Received: from VE1EUR02FT011.eop-EUR02.prod.protection.outlook.com
 (2a01:111:f400:7e06::203) by LO2P265CA0127.outlook.office365.com
 (2603:10a6:600:9f::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1294.21 via Frontend
 Transport; Fri, 2 Nov 2018 11:51:45 +0000
Authentication-Results: spf=softfail (sender IP is 163.1.154.218)
 smtp.mailfrom=ebmdatalab.net; UniOxfordNexus.mail.onmicrosoft.com; dkim=fail
 (signature did not verify)
 header.d=ebmdatalab.net;UniOxfordNexus.mail.onmicrosoft.com; dmarc=fail
 action=none header.from=info.sagepub.co.uk;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 ebmdatalab.net discourages use of 163.1.154.218 as permitted sender)
Received: from smtp.nexus.ox.ac.uk (163.1.154.218) by
 VE1EUR02FT011.mail.protection.outlook.com (10.152.12.150) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.1294.14 via Frontend Transport; Fri, 2 Nov 2018 11:51:45 +0000
Received: from relay14.mail.ox.ac.uk (163.1.2.162) by HUB01.ad.oak.ox.ac.uk
 (163.1.154.218) with Microsoft SMTP Server (TLS) id 14.3.382.0; Fri, 2 Nov
 2018 11:51:30 +0000
Received: from so254-23.mailgun.net ([198.61.254.23])	by relay14.mail.ox.ac.uk
 with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)	(Exim 4.89)
	(envelope-from <bounce+0b97aa.3e09fc-ebmdatalab=phc.ox.ac.uk@ebmdatalab.net>)
	id 1gIXz7-0007EX-m1	for ebmdatalab@phc.ox.ac.uk; Fri, 02 Nov 2018 11:51:30
 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=ebmdatalab.net; q=dns/txt;
 s=krs; t=1541159488; h=Content-Type: MIME-Version: Date: From:
 List-Unsubscribe: To: Reply-To: Message-ID: Subject;
 bh=REoNEBBedXwUzN0wvO7tO0ANUANnZoflCbDu8t3nzS4=; b=a69HLvk+h3bl1CPia7DiYlfR6ox+s6tWXDhvbFO2zPcrvvmvH3iYE96eaqgOeLVcxIrGXT70
 vJJfyoH9IoXNueFLVbPzrQIwZ8bv9JDgSgBPjUixZzJxUeJYIYl73yCUgPA5kLhyJVPDo1uT
 aLx6NuXUxlubQl3rfsePzdcsqX8=
X-Mailgun-Sending-Ip: 198.61.254.23
X-Mailgun-Incoming: Yes
X-Envelope-From: <mail.sysvpepwxljeffvcqojo@info.sagepub.co.uk>
Received: from mail79-189.us1.msgfocus.com (mail79-189.us1.msgfocus.com
 [81.29.79.189]) by mxa.mailgun.org with ESMTP id
 5bdc3a40.7fef20614230-smtp-in-n01; Fri, 02 Nov 2018 11:51:28 -0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=msgf; d=msgfocus.com;
 h=Subject:X-Mailer:Message-ID:Reply-To:To:List-Unsubscribe:From:Date:
 MIME-Version:Content-Type;
 bh=REoNEBBedXwUzN0wvO7tO0ANUANnZoflCbDu8t3nzS4=;
 b=aH9c35o/aVqcxy+2roJNKyX87guNruwky63tQyznwaYmSC1DOyg5RnoVODo4L4FFHcG5KKkiUHT9
   Bvix8Zkh6rrcD7utyDR9jgj5aAcZdnAqTgzPVRtfUKDj597IIHiBbYxO2OErVatVxsVr0fa6acVA
   ToAi+IxdRoBMklG3/bw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=info.sagepub.co.uk; s=msgf;
	t=1541159485; bh=REoNEBBedXwUzN0wvO7tO0ANUANnZoflCbDu8t3nzS4=;
	h=Subject:X-Mailer:Message-ID:Reply-To:To:List-Unsubscribe:From:
	 Date:MIME-Version:Content-Type;
	b=l2jBxln29vppruyPKSfYXWRhX3jbw+YC+HNLAaAHQSRYi6Ze8EqQf3Tvwd1hnX97H
	 Jw3aSr+UmfpdFkmMXKVgoXjdjOS1l2+AMTrewAedkq/luKC7lL92JqGH/IK093rNQt
	 PGv07fYKT79+vXT+4PobLoeJTcykL6IpVI+BxdSI=
Subject: CFP | Immune checkpoints and anticancer therapies
X-Mailer: MessageFocus v2 launch
Message-ID: <xY3j-73cyZbWMt-1b8-1fEgUbnghep18yHbR@info.sagepub.co.uk>
Reply-To: DO NOT REPLY <marketing.replies@sagepub.co.uk>
To: <compare-team@ebmdatalab.net>
List-Unsubscribe: <mailto:mail.sysvpepwxljeffvcqojo@info.sagepub.co.uk?subject=Unsubscribe>
From: Professor Magdalena Chechlinska <announcements@info.sagepub.co.uk>
Date: Fri, 2 Nov 2018 11:51:25 +0000
Content-Type: multipart/alternative;
	boundary="--152ACA1C88B5F70143323E9F24246"
X-NTG-DKIM-verify: pass 
X-Oxmail-Spam-Status: score=2.3 tests=HEADER_FROM_DIFFERENT_DOMAINS,HTML_FONT_LOW_CONTRAST,HTML_MESSAGE,URIBL_GREY
  2.0 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: msgfocus.com]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
X-Oxmail-Spam-Level: **
Return-Path: bounce+0b97aa.3e09fc-ebmdatalab=phc.ox.ac.uk@ebmdatalab.net
X-OrganizationHeadersPreserved: HUB01.ad.oak.ox.ac.uk
X-MS-Exchange-Organization-ExpirationStartTime: 02 Nov 2018 11:51:45.5702
 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 2:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: db23d0b8-61c5-499e-2216-08d640b9906d
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-MS-Exchange-Organization-SCL: 1
X-CrossPremisesHeadersPromoted: VE1EUR02FT011.eop-EUR02.prod.protection.outlook.com
X-CrossPremisesHeadersFiltered: VE1EUR02FT011.eop-EUR02.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
 CIP:163.1.154.218;IPV:NLI;CTRY:GB;EFV:NLI;SFV:NSPM;SFS:(2980300002)(3190300001)(199004)(189003)(16586007)(84326002)(156004)(26005)(116002)(486006)(71190400001)(74482002)(6306002)(246002)(1720100001)(4006020)(2616005)(733005)(575784001)(336012)(33964004)(956004)(14444005)(236005)(476003)(126002)(42882007)(2351001)(6666004)(356004)(606006)(76236002)(50226002)(8676002)(105596002)(19627405001)(1096003)(106466001)(569274001)(8936002)(6862004)(146002)(5660300001)(43066004)(7066003)(55176004)(53376002)(966005)(47110200001);DIR:INB;SFP:;SCL:1;SRVR:CWLP265MB1697;H:smtp.nexus.ox.ac.uk;FPR:;SPF:SoftFail;LANG:en;PTR:hub01.nexus.ox.ac.uk;A:1;MX:1;
X-Microsoft-Exchange-Diagnostics: 1;VE1EUR02FT011;1:npXcszETSKaeVyboyoRnyTYV/TH0zpTDrnI4KW6subkJH7gt7LvLsyquhJJeImbxNIpol0cAwXeBD46VusFDAMpVCetrC0ByX1MF6b/sflkltspBe8KoeW0tbBsOuJcQ
X-MS-Exchange-Organization-AuthSource: HUB01.ad.oak.ox.ac.uk
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: nexus.ox.ac.uk
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db23d0b8-61c5-499e-2216-08d640b9906d
X-Microsoft-Antispam: 
 BCL:0;PCL:0;RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(8559020)(8990200)(5600074)(711020)(2017052603328)(7153060);SRVR:CWLP265MB1697;
X-Microsoft-Exchange-Diagnostics: 
 1;CWLP265MB1697;3:R4HdAkJNesa0DC3K3vkGqk7Sk2twfQ81/ckwoNIum+M8dCk+sALb/3N+cFY1hqH7Twuv85utfVcd/MVG3Ne4kKVDZwTvPP+S1imEWvp67UEL87Oijo/xE60ZLLrkA7jmikkfk8GiqGArSBZ9gYn7/UEXH9olsJUS3EzEftauCaInGPPNfsrCQd5Wocia1tlnCg3jOlxRsqEa8SPeqkuLK2I8E7LjguHgn3bLMZrI0nURJvCWxqC7e0OXE7KeFBaWB94B9R+PsZXyh8Zb7+niUNKk9vQduKmnFbexh/uHEVQM8a1E80FUPJRPHC6ih+ElHHKAzYpoxk54uKGHNxtzOxu0Ap2GaQIYF7UN/1J+HIo=;25:tz3T1pWDxIr6j2usdS42nRkHQtJ0WJ99FYjasUlCTmRdYMDg5nBg3PXs9Ga6fA76OwhlCGXam5ENJmJGot3siFuKxunDMZ10JfbxLU7JpO2n5M2pHmxLSMgWQD1KHBRwJTVryENUNEObHfaZ2RjWej5/YgUPNr9h0TrVhMpkKq1+EACwKP+BUqn6kUXaziVQf4RMENUNwlNtzgnT52qLpTQdUVtV5OCcFDuse88OCQ6lHpi8VTLaLUNoDZWZKS1sfGN848iZ/tR3tuKrpz+y+SWjflMNRNonSEnoB7fx9l4QZ7jOZX66D2gOfHiQwlfgV/JA0f2YFDRrk3RTqq2aIA==
X-MS-TrafficTypeDiagnostic: CWLP265MB1697:
X-Microsoft-Exchange-Diagnostics: 
 1;CWLP265MB1697;31:m/gKj/F7yOLrmMHrzkIJ6c5evgw+hCkeX5Wf1gjvBI0H43SuT7aXSNge634KICkYHjeNfHT0XT828WQRvc1WDF96moWfqRon7kT6PYOuX74uWm/EGcaYqyFGdk4ZOLEdpt0xE7eahvMTgLy4Z1E1MWfJRRJ2GVLQZn1dyWHDV4ToCl8+srWPm0JxAJU8PbGc8fy/NOQJK/kefGID5A5vJnLAiVkJiF2Y/Hg+tPPcTEI=;20:mBDWKrEIhYfsBYMYY8VSsfGFVEbOL9IXyUJ9dxI3Ph6mOj1725NyfpaK4S0r+VJWv0tYRBoQZUJFH+dUULCSK0zdEmVRCz6s/+97U4Y2qwyt+grtK3M1Ac8+bLgJCB/mPtDrzxSBL6nGgM8J94KaIri13ngQisu6zgKMRuuIrbTcWjoHohr2YWtmATm5pvVEky5CBEMepvX9EUSVVpz7fy7rHZGAfoNmn9u+KZPD0l65vgIf690mg33mQ/j1jdZENkxz92yTIbaRglf1hzi3tQ85xSuGGopXtC+4uWEs+y+AYot1l5OQLCswfwsQMHqGTNFyMlgetfBf0bzGdHiEGA==
X-Exchange-Antispam-Report-Test: 
 UriScan:(148322886591682)(81227570615382)(116415991822766)(163966740194368)(17755550239193);
X-Exchange-Antispam-Report-CFA-Test: 
 =?us-ascii?Q?BCL:0;PCL:0;RULEID:(2018062399030)(2018011200283)(2401047)(8?=
 =?us-ascii?Q?121501046)(52410047)(2018011210174)(2018011211064)(201801121?=
 =?us-ascii?Q?2028)(2018011213028)(2018011214028)(2018011215028)(201801121?=
 =?us-ascii?Q?6028)(2018011217028)(2018011218028)(2018011219092)(201801122?=
 =?us-ascii?Q?0252)(2018011221063)(2018011222027)(2018011223027)(201801122?=
 =?us-ascii?Q?4027)(2018011225035)(2018011229035)(2018011232269)(201801123?=
 =?us-ascii?Q?3052)(2018021202149)(98810176)(98804176)(2018021203149)(9881?=
 =?us-ascii?Q?5176)(823300264)(823350442)(823411253)(10201501046)(3002001)?=
 =?us-ascii?Q?(12181506113)(3231382)(901025)(902075)(913088)(7045084)(9445?=
 =?us-ascii?Q?00087)(944510158)(944921075)(946801078)(946901078)(930000024?=
 =?us-ascii?Q?9)(9301000214)(4982022)(52103095)(52105095)(52106170)(524080?=
 =?us-ascii?Q?95)(98821027)(98822027)(52401380)(52601095)(52606095)(526060?=
 =?us-ascii?Q?95)(52606095)(52606095)(52606095)(52606095)(52606095)(526060?=
 =?us-ascii?Q?95)(52606095)(52606095)(52505095)(52406095)(52305095)(522060?=
 =?us-ascii?Q?95)(88860288)(93006095)(93003095)(12181509095)(1610001)(8301?=
 =?us-ascii?Q?001075)(8301003183)(148016)(201708071742011)(7699051)(769910?=
 =?us-ascii?Q?95);SRVR:CWLP265MB1697;BCL:0;PCL:0;RULEID:;SRVR:CWLP265MB169?=
 =?us-ascii?Q?7;?=
X-Microsoft-Exchange-Diagnostics: 
 1;CWLP265MB1697;4:CyS4+3zidgcciei3o1HWkDkohSULZHuZdPx6ocRcic6NIOssaLoFJvRFnglYJXtXlfG0/NnWsDMD2LDvK2u2bFOG63xYSNl3NlCTV++qHezDAws7p4X1cLSck/bJaRGHTgqS0C1V+imYdoxvm+jWbhhNL3V7VbD6vG8qM3E7zg8Oc2zYHYXGw8VQ0LCBQJ0V+4RD3vFV9dmEhpFOS6WvXaYg38V3Mw6cS/FdIe6Iap9cfetv+3kxy1KnJwXjMS6DLpgpnn1DyIyIfdJFFDIgZHKC6AzOz3SJRWVCRwicRpH5ISWDnlOBPjWo7nqEmttUIYxPeYfNhVdxqJTyfTTwP2u6hEdsgoQQIoqQZPnGEjxyv1ndIuQirba0T5h+fXCE9D/hlxM1eeJnWIF0s1/nJIcWrtoo8qzKMN6pRrG2bsY13Mble6Z0hz7IijJf8F28zu9ePNZTnh5yxFJiA6svZA==
X-Microsoft-Exchange-Diagnostics: 
 =?us-ascii?Q?1;CWLP265MB1697;23:z5DHkTfHuyCFaCu0J7oPf6xU2o/BJPNZp7FNmwGlk?=
 =?us-ascii?Q?db/mK6k1/RHBEYTrWLhmLsUpKm1RXeCXmM9X8xHu/F84sVQfP+9v4ypOYgvz?=
 =?us-ascii?Q?yo5y0C8SirhyZQTckE9VtGrQIwCjZifdWStbglw/YceaAdUyzZauiZ+tdYQT?=
 =?us-ascii?Q?r8QrgZm0w8NPkSlkUsXGY6nmMscaygOCcIL8RkNkRGc+jydgHaJU8hBTaOg8?=
 =?us-ascii?Q?f8MCRdj56aO77TPmOt99vnLRRGxzgkpSnsaJbPk5NNQ0K0OiuXTsm1X72IyM?=
 =?us-ascii?Q?oi4pMXx5AbwMJjfMBkiFn0Gh+mYjl8VlepGCYo7CuvTm5//z9EIaKF6W9mVl?=
 =?us-ascii?Q?n5krwCi8nnv9DcCgwPJ1EGOgKCbg6ywTyGTPtwvUOWwYhbp4W+6/kGsHeuIx?=
 =?us-ascii?Q?XNYSnzyckJtSWkVSLQ0J12DoVFlki+DvttcGlRUy/ueZCRybe0temYEYC0PR?=
 =?us-ascii?Q?RuHwII/aK+dSXxIovfmOWElh38VNPIfTSyJectlx5ASozAiJVAYyOXP15JPr?=
 =?us-ascii?Q?ZhLTq/ono5nw6X+/GYYJWtSqVTs5CaVvIWaJ/7guRHEI4DIy6YKdbf/EwfsQ?=
 =?us-ascii?Q?UB6BH0R/7qwXg9uECidUYFEiJOs4rBqSVUVKlzF6dZshvc/y9sX38PUllISe?=
 =?us-ascii?Q?MUaNd1vQBtcZaMxMViHDs1tw7xyHznx+tZ/t0qPiL76pf4mlb2b5xlpnoPuJ?=
 =?us-ascii?Q?QwYfCALXlDNI7HCfYkRzqcj1nOv9Cn59nc0NSCPFTc2U2Bav4c+62PvAYvG+?=
 =?us-ascii?Q?1kCWvS8/Y2dZ8cUSmPui7uZTHn8+FSAtRkfjDcbp/CGz8YPhDr7eBaxWjTpa?=
 =?us-ascii?Q?PSrD/8qeZ8hC3HVTrHweqzq0sEp0yXXOU46W3dmh9u1RqdtIn2eJnUZ7jXjp?=
 =?us-ascii?Q?M/k/n3ZCMDgwAZ9OykU1hHHsBp31ZxqB0+LGHCDWU0eL9g4zciFv2oB40E1T?=
 =?us-ascii?Q?Y5dM7UDc4hkGjUJ4E0WCdxB3piiIt4gn7TVdaOM391Kh1GGmWdIazl+nye1z?=
 =?us-ascii?Q?NC4N6yPcRSBMTc2wLVLK5f56Zdk8MAtGNSj9TCyyqixDDPyDJdc3PV8xq5iM?=
 =?us-ascii?Q?ZaYRvOohmeEqlZVWRovsWefgEFdauLkYxHU6JSWxU+UTO/lpLxQSwy8W7abY?=
 =?us-ascii?Q?5kSeEAbIKs=3D?=
X-Microsoft-Antispam-Message-Info: 
 +dFhzdfVzUCb3YcAnyGTgCTbnYLA8hCi6l99d5yRSCyAFuY0JkzKx9RS+qsW9YgDo9EIRBWYMRWdXHzd3xpHr08lyH9y4lBcFPuMATrBwP/cowaEQ0nKqmD7gWjqTZ46qA6NkD72Aitd4tTHMX+baUbwCz7Zr+Y9Va52auILqrXK2AO2h/RtUPjd2kbhDAQBkTlQhpm/Mvjil3ly10xeeAC2+9KcPGoOB2d96jg0q8Cc/flVJRDks91p4fB8dAwCHqQzWYkTtbZ+AvGdGLPMGYaMTctHpp9bahUHVYWMuePBOQ64+lO3mkRbgHWXasKuk1pXPst91COcmGQA4VfL5WrXNn1JF5gyPDNYYWNT9pt+tY+IF2Sdn6fv36+oCNh4JPM0Y+BgI69SfPL1Y7RJobWUTjHcsNjNAnbGdQJo96y5sWdz2rwCSrdZW+XfCjavtpLeiie+COErqpxtAsjG2RzRwgpljgEM6x5lE2nRVdhlCMCxNpnkqT8hVkLGzMV6iHAMHDRdxz6010nU+Z7NK2scduGp+XZuSUzxyQ98gTWRLysIQQPM0PJNLiDI1UPtzVydCPrCYUVGvEJp+0OdFWUKOHOeOdWT+Zq6wYTdKzbZGvm6xRQupMr/7ckHFGfJ0/NDOBKt3htlUucXOo327qD+wak35DAFk/zwF7TJvaktBNVI7LlqLo+HtqGHFfXKw6BgquxoHWgjk4SY/c7OCp8bBolimHlrcQnfgRwrrss=
X-Microsoft-Exchange-Diagnostics: 
 1;CWLP265MB1697;6:gSDINsvIJnEiWLKLsY0AehQ7AJ0hU8pnb8d0pXvx9uVh/Kfs5gqJLWgBAaLYr0uRWMiMi9vXVxU+quyLGJXGy+lzqLJM0QUzJT6BtOids5vn7iTEEXwB8NhCh8XJZy2p3m8OYI2PTxejaG//xueCKsxXm+LCTlMCNFzdJ4MH68qtsOxdqATgiciRqkBTcJwoTgDGX/GERsmH7OrlC0Xy6sOqUe9wW1SSmA6QjqA8cmP28YlWMh1aicgbYo2hm7pjn6sj2SrxN6kgIYQ4L//bOTtdeoUBOCj7fGUIpnuR0iC7ygltcJ5yNFj6wzPphx4tdgNaleEJgr6BF4FZ5fpwCBwraoeCbu0xDMfbznd/NPBjZNfy+P2nz34ILtXQ+PH9M34Yfn+rzdBEm4o93bdzKgCdmCB58TSgRN+a009X+ldsfCarSIMDRAzMOqjQM3J4GbkJ5o7IU0YqFV4rYvyIXw==;5:9JwoqlmfUwxItcuopam6TmNMiC5b37NbJjo7SJ10z9MocBDPSzbxN3LESlx7bsuceC8l3x4hYkdtRTGFx+WpSrSzoXO/06EyRbGxNQ1aodUvSfEUyV1QL3iJnuhgx4NwcUmcyNdDsdnSLMgEG/ATKJZlL1hP8FQwlMGbIQphG4k=;7:vpwOcQRWb4+CQo7IgP3EkDVIb4luTQRywXF9v90BqPggm0LxXk0PAkXCuDrAcES+x04oeCEk72pxgyjjcArA2An9Fz8G9tScKwaZ6wqiRiQoF6vyACStME2XnSg8nzBAqBmdWvatZN2XAwT/YFgdPw==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2018 11:51:45.3046
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: db23d0b8-61c5-499e-2216-08d640b9906d
X-MS-Exchange-CrossTenant-Id: cc95de1b-97f5-4f93-b4ba-fe68b852cf91
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=cc95de1b-97f5-4f93-b4ba-fe68b852cf91;Ip=[163.1.154.218];Helo=[smtp.nexus.ox.ac.uk]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB1697
X-MS-Exchange-Transport-EndToEndLatency: 00:00:07.3270307
X-MS-Exchange-Processed-By-BccFoldering: 15.20.1294.024
X-Microsoft-Exchange-Diagnostics: 
	1;CWLP265MB1699;27:Sb4RfGdZK4yHnWJWD8GyOuBonEnJ9Rojo3UO9hBzzDXcBabMl4WM57u5f8D5mWMU9ccC3djx/vZeSRMChLnlk/84XioX+a7+ORTIqxrFOoDOxD90k+tawrtioA/a2bnnGVhBiJqJN7bT5YOv/BMNaPD9x1LeI/lM0i+V9JEslTB2S0hGB5C/Fai1IvxqxgEN/8AJC/eZHVat4mIhOY7/3EKWm5MnoZLC2Xvxg5zgXzBnrAkZ6KAx/DDtNruGeBHs3xB72SQ7vlM5OsrOUvML+UTYDmYVJYMoeBqcoj2YAVGJOGwxUBg28SuZ203ktBpmUZLrv3VEkOJVoBJ5CLzLS1U+Zpbr1EcqySwdXfD9d/dZqTBNo6zsr9yFtMyrBi3Yv+4virMcrLYzJVhcjbsQ9Q==
X-Microsoft-Antispam-Mailbox-Delivery: 
	ucf:0;jmr:0;ex:0;auth:0;dest:I;ENG:(20160514016)(750119)(520011016)(944506303)(944626516);
X-Microsoft-Antispam-Message-Info: 
	sBaSBPJb4xW7R1N4ymUDXlvVCFzMd9bp9CVsxW05ciHdsRQZZBZbhb3kPKfX94ieGuPG/bjxFgTNYRGMcgSfA0+IPOceXkBnjHcPnshylsSkbuNk8qs5nkIcUuvxpnF7FIEl9tZguyKO2nJpB82sIeE6hjKXqr4KdE2fcujw+XCff6+jZbNAY/eqjiXJs/fS4u6ok0nDN07S+K9CEFC2bumxmsz1nLXrIUMpWTP7egIp74EFMPAw6s+E0Qc27hXNrl6PuHbIgCPn++u/UdP6TtOZPDsafKuZOn1Qk5xevU02YnlxOicQ2lsFS3zQQpGbNmbIoNKVB+WfRSW16SFCf5JkHptvcmQH+FYaIcWRKmMOXicFbU1rbmJf2Uza56mRzR7gipt6f7/aF2lLD5lr+tk/04/LXeUqwZwfIy+yI4ECVlfL9OsPuw7hpzhhBKYqeAA/psCmOhPUJRMaEjaXnpbon7TRWWOAyrY1MNffC1BdkefL6WlT+GR82osMpNJr8cMm9m2VN8dKurzlk3775JhVd89BIpVtpJSrPlz/COVF1A2quUvmGxdhn79pr4Ksj2rGt8yxwy16KXq+ns1gkbIt+T3PXxlm+XLdkvrWAyYMnDyPCtA+sWS5E/SJoqzgootvG/LK8f5gqhqjZoPpzwoT+HQ40Dt75kRMADsO6cpewmnIUB0ek+Y0PB/16PASVlFKDa0h53SnH/b9mchgK8y/gbzjmlL0SbtRGgpa4TCE3ZGYaqZGzxoZRxFwGQ4oCj8txZucxl0qrB1m9589eYk7/lBNLQdHorfvwooHulo=
MIME-Version: 1.0

----152ACA1C88B5F70143323E9F24246
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

SAGE News Your paper could be indexed in PubMed: MEDLINE http://info.sagepu=
b.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfd
http://info.sagepub.co.uk/c/11o8z9TqNH3YCb20VTZZ1LhJc7HH

http://info.sagepub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfdView as webpage htt=
p://info.sagepub.co.uk/q/12EfFI85ClI6Eau5mYbTelSE/wv | http://info.sagepub.=
co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfdEmail alerts
http://info.sagepub.co.uk/c/11o8zbh4IW8Q6IPDZwH1PvGirPR0

Share:
Share on Twitter http://info.sagepub.co.uk/o/1wHnwx5g5iDq37AM6?status=3D%24=
AMF_SHORT_PERMALINK%24
Share on Facebook http://info.sagepub.co.uk/o/1NKu8SNfTmROXGuml?u=3D%24AMF_=
PERMALINK%24
Share on LinkedIn http://info.sagepub.co.uk/o/114NALevfHr6dSfnWA?mini=3Dtru=
e&url=3D%24AMF_PERMALINK%24&title=3D%24AMF_SUBJECT_LINE%24

SAGE Logo
http://info.sagepub.co.uk/c/11o8zcEIEbdHBgDh39o4Dg4RHy0j

Indexed in PubMed: MEDLINE

New Special Topic: Immune checkpoints and anticancer therapies
http://info.sagepub.co.uk/c/11o8ze2mzqiz5OqU6M57r0tqXg9C

Dear Colleague,

Tumor Biology
http://info.sagepub.co.uk/c/11o8zfq0uFnqAmexaoMaeKS0cYiV is currently invit=
ing submissions to a new Special Topic on immune checkpoints and anticancer=
 therapies.

Journal Cover
http://info.sagepub.co.uk/c/11o8zibil9x9zrPNhEafQfF8IoBx

Are you conducting research in this area? View the submission guidelines
http://info.sagepub.co.uk/c/11o8zjyWgoC13ZDqlgRiE03HY6KQ for details on for=
matting your manuscript and to find out about the article processing charge=
 due if your paper is accepted after peer review.

About the topic

Icon

The 2018 Nobel Prize won by James P. Allison and Tasuku Honjo recognized th=
eir studies on immune checkpoints and immune checkpoint blockade anticancer=
 therapies. This new research field encompasses, among others, mechanisms o=
f immune response and tumor immunosuppression. Read more
http://info.sagepub.co.uk/c/11o8zkWAbDGSyxr3oTylrKshdOU9

Areas of interest include, but are not limited to:

Icon

Mechanisms of anti-immune checkpoint therapies
Combination therapies comprising immune checkpoint inhibitors
New targets for immunotherapy
Biomarkers for immuno-oncology

View all topics
http://info.sagepub.co.uk/c/11o8zmke6SLK35eGswfofuQQtx3s

Ready to submit your paper?
http://info.sagepub.co.uk/c/11o8znHS27QBxD2jw8Wr3ffpJfcL

Tumor Biology is a peer reviewed, open access journal publishing experiment=
al and clinical cancer research. The journal is indexed by PubMed: MEDLINE.

Please do not hesitate to get in touch
tubadmin@sagepub.com if you have any questions.


SAGE publishes more than 1,000 journals, including Tumor Biology. Since you=
've previously published in this field, we thought this journal might be a =
good fit for your research. Explore Tumor Biology and sign up for email ale=
rts to stay up to date on the latest developments in your field.



Yours faithfully,

Professor Magdalena Chechlinska, Maria Sklodowska-Curie Institute - Oncolog=
y Center, Warsaw
Editor-in-Chief

As a leading publisher of academic journals for more than 50 years and foun=
ding member of the Open Access Scholarly Publishers Association
http://info.sagepub.co.uk/c/11o8zp5vXmVt2aPWzLDtQZDYYXm4 (OASPA
http://info.sagepub.co.uk/c/11o8zqt9SC0kwIDzDokwEK2yeFvn), SAGE is committe=
d to maintaining high quality in our open access content. SAGE is a publish=
er member of the Committee on Publication Ethics
http://info.sagepub.co.uk/c/11o8zrQNNR5c1grcH11zsur7unEG (COPE
http://info.sagepub.co.uk/c/11o8zterJ6a3vOePKDICgePGK5NZ) and adheres to CO=
PE=E2=80=99s Code of Conduct for Journal Publishers. Our open access journa=
ls publish papers that undergo a rigorous peer review process to ensure the=
y meet our exacting standards. Please review our Open Access Position State=
ment
http://info.sagepub.co.uk/c/11o8zuC5EleV0m2sOgpF3ZefZNXi for more informati=
on.

http://info.sagepub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfdSAGE logo
http://info.sagepub.co.uk/c/11o8zxnnuPoDZrDIVvNKFu1ovefU

http://info.sagepub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfdABOUT US
http://info.sagepub.co.uk/c/11o8zyL1q4tvtZrlZ8uNtepXKWpd | http://info.sage=
pub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfdCONTACT US
http://info.sagepub.co.uk/c/11o8zA8FljymYxeZ2LbQgYOx0Eyw | http://info.sage=
pub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfdPRIVACY POLICY
http://info.sagepub.co.uk/c/11o8zBwjgyDet52C6nST4Jd6gmHP | UNSUBSCRIBE http=
://info.sagepub.co.uk/k/12EfFI85ClI6Eau5mYbTelSE

SAGE Offices:
Los Angeles: 2455 Teller Rd Thousand Oaks, CA 91320, USA
London: 1 Oliver's Yard, 55 City Road, London, EC1Y 1SP, UK. Registration N=
o. 1017514
New Delhi: B-1/I-1, Mohan Cooperative Industrial Estate, Mathura Road, Post=
 Bag 7, New Delhi 110 044, India
Singapore: 3 Church Street #10-04, Samsung Hub, Singapore 049483
Washington, DC: 2600 Virginia Avenue NW, Suite 600, Washington, DC, 20037, =
USA http://info.sagepub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfd
http://info.sagepub.co.uk/c/11o8zCTXbNI5XCQfa0zVStBFw4R8

This message was sent to "compare-team@ebmdatalab.net"::<mailto:compare-tea=
m@ebmdatalab.net>.

802373=

----152ACA1C88B5F70143323E9F24246
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"><t=
itle>SAGE News</title>
<style type=3D"text/css">
span.teaser { display: none !important; }
.style1 {color: #000000}
</style></head>
<body link=3D"006acc" vlink=3D"006acc" alink=3D"006acc" topmargin=3D"0">
<!--HIDDEN TEASER LINE CODING-->
		<span style=3D"font-family:Arial, Helvetica, sans-serif; font-size:11px; =
color:#333333" class=3D"teaser">Your paper could be indexed in PubMed: MEDL=
INE</span>
<!--HIDDEN TEXT LINK FOR DATA TEAM (to filter out autobot clicks)... DO NOT=
 REMOVE-->
		<a href=3D"http://info.sagepub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfd" targ=
et=3D"_blank"><img src=3D"http://info.sagepub.co.uk/t/1fEgUbnghep18yHbR.png=
" alt=3D""></a><a href=3D"http://info.sagepub.co.uk/c/11o8zEhB72MXsaDSdDgYG=
e0eLN0r"></a>
<!--START OF VISIBLE CONTENT=20
				(HEADER LINKS & SOCIAL SHARING TABLE)-->
<table width=3D"600" border=3D"0" align=3D"center" cellpadding=3D"5" cellsp=
acing=3D"0">
  <tr>
    <td height=3D"30" valign=3D"top" style=3D"font-family:Arial, Helvetica,=
 sans-serif; font-size:11px; color:#333333"><p><a href=3D"http://info.sagep=
ub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfd" target=3D"_blank"><img src=3D"http=
://info.sagepub.co.uk/t/1fEgUbnghep18yHbR.png" alt=3D""></a><a href=3D"http=
://info.sagepub.co.uk/q/12EfFI85ClI6Eau5mYbTelSE/wv">View as webpage</a>&nb=
sp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href=3D"http://info.sagepub.co.uk/q/11=
gBKt3e7NUtAxN2zdNjYDJl/sfd" target=3D"_blank"><img src=3D"http://info.sagep=
ub.co.uk/t/1fEgUbnghep18yHbR.png" alt=3D""></a><a href=3D"http://info.sagep=
ub.co.uk/c/11o8zFFf2hROWIrvhfY1tYoO1v9K" target=3D"_blank">Email alerts</a>=
</p></td>
    <td width=3D"140"><table width=3D"135">
      <tr>
        <td width=3D"45" style=3D"font-family:Arial, Helvetica, sans-serif;=
 font-size:11px; color:#333333">Share:</td>
        <td width=3D"30" style=3D"font-family:Arial, Helvetica, sans-serif;=
 font-size:11px; color:#333333"><a href=3D"http://info.sagepub.co.uk/o/1wHn=
wx5g5iDq37AM6?status=3D%24AMF_SHORT_PERMALINK%24"> <img src=3D"http://msgfo=
cus.com/files/amf_sage/workspace_42/GLOBAL-IMAGES/Social_Media_icons/Twitte=
r_grey_20x20.png" border=3D"0" width=3D"20" height=3D"20" alt=3D"Share on T=
witter" title=3D"Share on Twitter"></a></td>
        <td width=3D"30" style=3D"font-family:Arial, Helvetica, sans-serif;=
 font-size:11px; color:#333333"><a href=3D"http://info.sagepub.co.uk/o/1NKu=
8SNfTmROXGuml?u=3D%24AMF_PERMALINK%24"> <img src=3D"http://msgfocus.com/fil=
es/amf_sage/workspace_42/GLOBAL-IMAGES/Social_Media_icons/Facebook_grey_20x=
20.png" border=3D"0" width=3D"20" height=3D"20" alt=3D"Share on Facebook" t=
itle=3D"Share on Facebook"></a></td>
        <td width=3D"30" style=3D"font-family:Arial, Helvetica, sans-serif;=
 font-size:11px; color:#333333"><a href=3D"http://info.sagepub.co.uk/o/114N=
ALevfHr6dSfnWA?mini=3Dtrue&amp;url=3D%24AMF_PERMALINK%24&amp;title=3D%24AMF=
_SUBJECT_LINE%24"><img src=3D"http://msgfocus.com/files/amf_sage/workspace_=
42/GLOBAL-IMAGES/Social_Media_icons/LinkedIn_grey_20x20.png" border=3D"0" w=
idth=3D"20" height=3D"20" alt=3D"Share on LinkedIn" title=3D"Share on Linke=
dIn"></a></td>
      </tr>
    </table></td>
  </tr>
</table>
<!--OUTER TABLE-->   =20
    <table width=3D"600" border=3D"0" align=3D"center" cellpadding=3D"0" ce=
llspacing=3D"0">
      <tr>
        <td>
        <!--DESK START--><table width=3D"100%" height=3D"70" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"10">
           <tr>
             <td width=3D"466" valign=3D"middle" bgcolor=3D"#796C83"><font =
style=3D"font-size:25px; line-height:normal;" align=3D"left"><a href=3D"htt=
p://info.sagepub.co.uk/c/11o8zH2SXwWGrgf8kSF4hINnhdj3" target=3D"_blank"><i=
mg src=3D"http://msgfocus.com/files/amf_sage/workspace_42/banner_ads/SAGE_O=
pen_Access_Logo_white_275pix_72ppi.png" alt=3D"SAGE Logo" border=3D"0" hspa=
ce=3D"0" vspace=3D"0" title=3D"SAGE Logo" width=3D"275"></a></font></td>
             <td width=3D"134" bgcolor=3D"#796C83"><table width=3D"120" bor=
der=3D"0" cellpadding=3D"0" align=3D"right">
               <tr>
                 <td align=3D"right" bgcolor=3D"#796C83"><p style=3D"font-f=
amily:Arial, Helvetica, sans-serif; font-size:12px; line-height:1.5em; colo=
r:#FFFFFF; padding-right: 10px"><strong>Indexed in PubMed:  MEDLINE</strong=
></p></td>
               </tr>
             </table></td>
           </tr>
         </table>
         <!--end header-->
          <!--start inside headline and cover image-->
        <table width=3D"100%" border=3D"0" align=3D"center" cellpadding=3D"=
0" cellspacing=3D"0">
          <tr>
            <td valign=3D"top" bgcolor=3D"#FFFFFF"><table width=3D"100%" bo=
rder=3D"0" cellspacing=3D"0" cellpadding=3D"0">
              <tr>
                <td width=3D"81%" align=3D"left" valign=3D"top" style=3D"fo=
nt-family:Arial, Helvetica, sans-serif; font-size:27px; line-height:normal;=
 color:#333333; padding-top: 15px;"><p>New Special Topic: <a href=3D"http:/=
/info.sagepub.co.uk/c/11o8zIqwSM1xVO2Lovm75tbWwVsm" target=3D"_blank">Immun=
e checkpoints and anticancer therapies</a></p>
				  <p style=3D"font-size:14px; line-height: 1.5em">Dear Colleague,</p>
				<p style=3D"font-size:14px; line-height: 1.5em"><em><strong><a href=3D"=
http://info.sagepub.co.uk/c/11o8zJOaO16pqlQos839TdAvMDBF">Tumor Biology</a>=
</strong></em> is currently inviting submissions to a new Special Topic on =
<strong>immune checkpoints and anticancer therapies</strong>.</p>
				  </td>
                <td align=3D"right" width=3D"19%" valign=3D"top" style=3D"f=
ont-family:Arial, Helvetica, sans-serif; font-size:26px; line-height:normal=
; color:#333333; padding-top: 15px;"><a href=3D"http://info.sagepub.co.uk/c=
/11o8zMzsEvg8prrEznrfuInEi3Uh" target=3D"_blank"><img src=3D"https://us.sag=
epub.com/sites/default/files/upm-binaries/styles/sage_thumbnail_width_150px=
/feed/79494_TUB.jpg" alt=3D"Journal Cover" width=3D"100" vspace=3D"0" borde=
r=3D"0"></a></td>
              </tr>
            </table></td>
          </tr>
        </table><!--DESK END--><br>
        <!--SPACE-->
<!--HEADER/INTRO TABLE-->
        <table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" bgcolor=3D"#ffffff">
                <tr>
                <td>
                <table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0">
          <tr>
            <td style=3D"font-family:Arial, Helvetica, sans-serif; font-siz=
e:14px; line-height:1.5em; color:#000000">             =20
            <p>Are you conducting research in this area? View the <a href=
=3D"http://info.sagepub.co.uk/c/11o8zNX6zKkZTZfhD08iisMdxM3A" target=3D"_bl=
ank">submission guidelines</a> for details on formatting your manuscript an=
d to find out about the article processing charge due if your paper is acce=
pted after peer review.</p>
				<br>
			<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" b=
gcolor=3D"#ffffff">
                <tr>
            <td><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" bgcolor=3D"#ffffff">
			<!-- TOP COLOUR ROW-->
			<tr>
				<td bgcolor=3D"#796C83" style=3D"font-family:Arial, Helvetica, sans-ser=
if; font-size:22px; line-height:normal; color:#ffffff" align=3D"center">Abo=
ut the topic</td>
			</tr>
			<!-- END OF TOP COLOUR ROW-->
			<tr>
				<td>
				<!-- TABLE WITH BORDER-->
					<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"2"=
 bgcolor=3D"#796C83">
					<tr>
						<td>
							<!-- INSIDE TABLE-->
							<table width=3D"100%" border=3D"0" cellpadding=3D"10" cellspacing=3D=
"0" bgcolor=3D"#ffffff">
								<tr>
									<td width=3D"100"><img src=3D"http://msgfocus.com/files/amf_sage/w=
orkspace_2/Images/journal_03_100x100_circle.png" alt=3D"Icon" width=3D"100"=
 border=3D"0" hspace=3D"0" vspace=3D"0"></td>
									<td>
									<!-- TABLE WITH CONTENT-->
										<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" bgcolor=3D"#ffffff">
												<tr>
											<td style=3D"font-family:Arial, Helvetica, sans-serif; font-size=
:14px; line-height: 1.5em; color:#333333"><p>The 2018 Nobel Prize won by Ja=
mes P. Allison and Tasuku Honjo recognized their studies on immune checkpoi=
nts and immune checkpoint blockade anticancer therapies. This new research =
field encompasses, among others, mechanisms of immune response and tumor im=
munosuppression. <a href=3D"http://info.sagepub.co.uk/c/11o8zPkKuZpRox2UGCP=
l6daMNucT" target=3D"_blank">Read more</a> </p>                      </td>
											</tr>
										</table>
										<!--  END OF TABLE WITH CONTENT-->	=09
									</td>
								</tr>
							</table>
						</td>
					</tr>
					</table>
					<!-- END OF TABLE WITH BORDER-->
				</td>
			</tr>
			</table></td>
          </tr>
        </table>
        <!--BOX END-->
        <table width=3D"100%" cellpadding=3D"0" cellspacing=3D"0">
        	<tr>
        		<td>&nbsp;</td>
			</tr>
        </table>
        <br>
        <table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" bgcolor=3D"#ffffff">
                <tr>
            <td><table width=3D"100%" border=3D"0" cellpadding=3D"0" cellsp=
acing=3D"0" bgcolor=3D"#ffffff">
			<!-- TOP COLOUR ROW-->
			<tr>
				<td bgcolor=3D"#796C83" style=3D"font-family:Arial, Helvetica, sans-ser=
if; font-size:22px; line-height:normal; color:#ffffff" align=3D"center">Are=
as of interest include, but are not limited to:</td>
			</tr>
			<!-- END OF TOP COLOUR ROW-->
			<tr>
				<td>
				<!-- TABLE WITH BORDER-->
					<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"2"=
 bgcolor=3D"#796C83">
					<tr>
						<td>
							<!-- INSIDE TABLE-->
							<table width=3D"100%" border=3D"0" cellpadding=3D"10" cellspacing=3D=
"0" bgcolor=3D"#ffffff">
								<tr>
									<td width=3D"100"><img src=3D"http://msgfocus.com/files/amf_sage/w=
orkspace_2/Images/pencil_paper_03_100x100_circle.png" alt=3D"Icon" width=3D=
"100" border=3D"0" hspace=3D"0" vspace=3D"0"></td>
									<td>
									<!-- TABLE WITH CONTENT-->
										<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" bgcolor=3D"#ffffff">
												<tr>
											<td style=3D"font-family:Arial, Helvetica, sans-serif; font-size=
:14px; line-height: 1.5em; color:#333333"><ul style=3D"padding-top: 10px">
												<li>Mechanisms of anti-immune checkpoint therapies</li>
												<li>Combination therapies comprising immune checkpoint inhibito=
rs</li>
												<li>New targets for immunotherapy</li>
												<li>Biomarkers for immuno-oncology</li>
												</ul>
												<ul><a href=3D"http://info.sagepub.co.uk/c/11o8zQIoqeuIT4QxKfwn=
TXzm3cmc" target=3D"_blank">View all topics</a></ul>
													</td>
											</tr>
										</table>
										<!--  END OF TABLE WITH CONTENT-->	=09
									</td>
								</tr>
							</table>
						</td>
					</tr>
					</table>
					<br>
			<table width=3D"300" border=3D"0" align=3D"center" cellpadding=3D"3">
                  <tr>
                    <td style=3D"font-size:16px; line-height:normal; font-f=
amily:Arial, Helvetica, sans-serif; color:#FFFFFF;"><p align=3D"center"> <a=
 href=3D"http://info.sagepub.co.uk/c/11o8zS62ltzAnCEaNSdqHHXViUvv" target=
=3D"_blank" style=3D"display: inline-block; color: #fff;  background-color:=
 #007D86; border-radius: 5px; width: 100%; border: 12px solid #007D86; text=
-align: center; text-decoration:none"> Ready to submit your paper?</a> </p>=
</td>
                  </tr>
                </table>
			<p style=3D"font-family:Arial, Helvetica, sans-serif; font-size:14px; li=
ne-height:1.5em; color:#000000"><strong><em>Tumor Biology</em></strong> is =
a peer reviewed, open access journal publishing experimental and clinical c=
ancer research. The journal is indexed by <strong>PubMed: MEDLINE</strong>.=
</p>	=09
			<p style=3D"font-family:Arial, Helvetica, sans-serif; font-size:14px; li=
ne-height:1.5em; color:#000000">Please do not hesitate to <a href=3D"mailto=
:tubadmin@sagepub.com">get in touch</a> if you have any questions.</p>
		=09
<p style=3D"font-family:Arial, Helvetica, sans-serif; font-size:14px; line-=
height:1.5em; color:#000000"> SAGE publishes more than 1,000 journals, incl=
uding <strong><em>Tumor Biology</em></strong>. Since you've previously publ=
ished in this field, we thought this journal might be a good fit for your r=
esearch. Explore <strong><em>Tumor Biology</em></strong> and sign up for em=
ail alerts to stay up to date on the latest developments in your field. </p=
>
=09
			  </td>
          </tr>
        </table>
					</td></tr></table>
					<p style=3D"font-family:Arial, Helvetica, sans-serif; font-size:14px; =
line-height:1.5em; color:#000000">Yours faithfully,</p>
					<p style=3D"font-family:Arial, Helvetica, sans-serif; font-size:14px; =
line-height:1.5em; color:#000000">
					Professor Magdalena Chechlinska, <em>Maria Sklodowska-Curie Institute =
- Oncology Center, Warsaw</em>
					<br>
					Editor-in-Chief
					</p>
					<!-- END OF TABLE WITH BORDER-->
				</td>
			</tr>
			</table></td>
          </tr>
        </table>
        <br>
        <!--CLOSING SECTION TABLE-->
<!--FOOTER TABLE-->
<table width=3D"100%" border=3D"0" align=3D"center" cellpadding=3D"0" cells=
pacing=3D"0" bgcolor=3D"#FFFFFF">
  <tr>
    <td>
      <table width=3D"100%" border=3D"0" bgcolor=3D"#FFFFFF">
     <tr>
       <td style=3D"padding-top: 10px; padding-bottom: 10px;">
         <table width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"10">
           <tr>
             <td bgcolor=3D"#E6E6E6" style=3D"font-family:Arial, Helvetica,=
 sans-serif; font-size:11px; line-height:normal; color:#333333;"><p>As a le=
ading publisher of  academic journals for more than 50 years and founding m=
ember of the <a href=3D"http://info.sagepub.co.uk/c/11o8zTtGgIErSarNRuUtvsm=
uyCEO">Open Access Scholarly Publishers Association</a> (<a href=3D"http://=
info.sagepub.co.uk/c/11o8zURkbXJjmIfqV7BwjcL3OkO7">OASPA</a>), SAGE is comm=
itted to maintaining high  quality in our open access content. SAGE is a pu=
blisher member of the <a href=3D"http://info.sagepub.co.uk/c/11o8zWeY7cOaRg=
33YKiz6X9D42Xq">Committee on Publication Ethics</a> (<a href=3D"http://info=
.sagepub.co.uk/c/11o8zXCC2rT2lNQH2mZBUHycjL6J">COPE</a>) and adheres to COP=
E=E2=80=99s Code  of Conduct for Journal Publishers. Our open access journa=
ls publish papers that  undergo a rigorous peer review process to ensure th=
ey meet our exacting  standards. Please review our <a href=3D"http://info.s=
agepub.co.uk/c/11o8zZ0fXGXTQlEk5ZGEIrWLztg2">Open  Access Position Statemen=
t</a> for more information.</p></td>
           </tr>
         </table>
         </td>
     </tr>
   </table>
 <table width=3D"100%">
	<tr>
		<td>
			<hr width=3D"100%" size=3D"1px" color=3D"#cccccc">
		</td>
	</tr>
</table>
      <table width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0=
">
          <tr>
            <td width=3D"21%"><a href=3D"http://info.sagepub.co.uk/q/11gBKt=
3e7NUtAxN2zdNjYDJl/sfd" target=3D"_blank"><img src=3D"http://info.sagepub.c=
o.uk/t/1fEgUbnghep18yHbR.png" alt=3D""></a><a href=3D"http://info.sagepub.c=
o.uk/c/11o8A1LxOb7CPrfAdf4KjWJU4TyE"><img src=3D"http://www.sagepublication=
s.com/images/eblast/2009_icons/sagelogo_90x27.jpg" alt=3D"SAGE logo" width=
=3D"90" border=3D"0"></a></td>
            <td style=3D"font-family:Arial, Helvetica, sans-serif; font-siz=
e:11px; color:#333333;" width=3D"79%"><p align=3D"center"><a href=3D"http:/=
/info.sagepub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfd" target=3D"_blank"><img =
src=3D"http://info.sagepub.co.uk/t/1fEgUbnghep18yHbR.png" alt=3D""></a><a h=
ref=3D"http://info.sagepub.co.uk/c/11o8A39bJqcujZ3dgRLN7H8tkBHX" target=3D"=
_blank">ABOUT US</a>&nbsp;&nbsp; |&nbsp;&nbsp; <a href=3D"http://info.sagep=
ub.co.uk/q/11gBKt3e7NUtAxN2zdNjYDJl/sfd" target=3D"_blank"><img src=3D"http=
://info.sagepub.co.uk/t/1fEgUbnghep18yHbR.png" alt=3D""></a><a href=3D"http=
://info.sagepub.co.uk/c/11o8A4wPEFhlOwQQkusPVrx2AjRg" target=3D"_blank">CON=
TACT US</a>&nbsp;&nbsp; |&nbsp;&nbsp; <a href=3D"http://info.sagepub.co.uk/=
q/11gBKt3e7NUtAxN2zdNjYDJl/sfd" target=3D"_blank"><img src=3D"http://info.s=
agepub.co.uk/t/1fEgUbnghep18yHbR.png" alt=3D""></a><a href=3D"http://info.s=
agepub.co.uk/c/11o8A5UtzUmdj4Eto79SJbVBQ20z" target=3D"_blank">PRIVACY POLI=
CY</a> &nbsp;&nbsp; |&nbsp; &nbsp; <a href=3D"http://info.sagepub.co.uk/k/1=
2EfFI85ClI6Eau5mYbTelSE" target=3D"_blank">UNSUBSCRIBE</a></p></td>
          </tr>
        </table>
      <table width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0=
">
          <tr>
            <td style=3D"font-family:Arial, Helvetica, sans-serif; font-siz=
e:10px; color:#888888; padding-top: 10px"><p>SAGE Offices:<br>
                    <strong>Los Angeles:</strong> 2455 Teller Rd Thousand O=
aks, CA 91320, USA <br>
                    <strong>London:</strong> 1 Oliver's Yard, 55 City  Road=
, London, EC1Y 1SP, UK. Registration No. 1017514<br>
                    <strong>New Delhi:</strong> B-1/I-1, Mohan Cooperative =
Industrial Estate, Mathura Road, Post Bag 7, New Delhi 110 044, India<br>
                    <strong>Singapore:</strong> 3 Church Street #10-04, Sam=
sung Hub, Singapore 049483<br>
                    <strong>Washington, DC:</strong> 2600 Virginia Avenue N=
W, Suite 600, Washington, DC, 20037, USA
                      	<a href=3D"http://info.sagepub.co.uk/q/11gBKt3e7NUtA=
xN2zdNjYDJl/sfd" target=3D"_blank"><img src=3D"http://info.sagepub.co.uk/t/=
1fEgUbnghep18yHbR.png" alt=3D""></a><a href=3D"http://info.sagepub.co.uk/c/=
11o8A7i7v9r4NCs6rJQVwWkb5K9S"></a>
                </p>
              <p>This message was sent to <a href=3D"mailto:compare-team@eb=
mdatalab.net" style=3D"color:#999999;">compare-team@ebmdatalab.net</a>.</p>
              <p>802373</p></td>
          </tr>
      </table></td>
  </tr>
</table></td>
      </tr>
    </table>
<p>&nbsp;</p>
<!--[if lt mso 12]><img src=3D"https://t.msgf.net/r/1fEgUbnghep18yHbR.png?c=
=3D1" alt=3D""><![endif]--><![if gt mso 11]><img src=3D"https://t.msgf.net/=
r/1fEgUbnghep18yHbR.png" alt=3D""><![endif]>
</body>
</html>

----152ACA1C88B5F70143323E9F24246--
