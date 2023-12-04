#!/home/andrey/.conda/bin/python
# coding: utf-8
import pyperclip
# %load .local/share/qutebrowser/userscripts/tgmsg.py
from bs4 import BeautifulSoup
import os
import html2text
msg=os.environ["QUTE_SELECTED_HTML"]
soup=BeautifulSoup(msg,'xml')
time=soup.select('span.message-time')[0].text
with open(os.environ["QUTE_HTML"], 'r') as f:
    content = f.read()
    
    
headers=BeautifulSoup(content,'xml').select('div.MiddleHeader h3')
header=headers[len(headers)-1].text
'''
text=soup.select('div.text-content')
if text:
  text=BeautifulSoup(str(text)[0])
    tag=text.findAll(['span','img','svg'])
    for i in tag:
        i.decompose()
    text=text.text
else:
    text=''
'''
text=soup.find('div',{'class':'content-inner'})
tag=text.findAll(['span','svg','button'])
for i in tag:
        i.decompose()

#pyperclip.copy(header+' ['+time+']'+'\n'+html2text.html2text(text.prettify()))
pyperclip.copy(header+' ['+time+']'+'\n'+text.text)
