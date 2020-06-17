#!/usr/bin/python
# -*- coding: utf-8 -*-
# This module is mail function.

import imaplib
try:
    imap = imaplib.IMAP4_SSL('imap.qiye.aliyun.com',993)
    imap.login('username','passwd') # write your email and password
    imap.select()
    print(len(imap.search(None, 'UnSeen')[1][0].split()))
except Exception as e:
    print('Waiting')