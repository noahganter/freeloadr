import fleep
import os
import hashlib
import numpy as np
import pandas as pd
import pymysql.cursors
import pymysql
import string 
import datetime
import sys
from shutil import copyfile
adminid=sys.argv[1]
#cleanstring is for creating computer-friendly names
#no spaces or special characters - alphanumeric
#must begin with letter
def cleanstring(input):
    input = input.strip()
    input = input.replace(" ","")
    return input

def getextension(input):
    input = input.strip()
    input = input.replace(" ","")
    return input
#simple way to know what we are dealing with
def filetype(filepath):
    textchars = bytearray({7,8,9,10,12,13,27} | set(range(0x20, 0x100)) - {0x7f})
    is_binary_string = lambda bytes: bool(bytes.translate(None, textchars))
    answer=is_binary_string(open(filepath, 'rb').read(1024))
    if answer:
        return 'binary'
    else:
        return 'text'

#checksum for file - very fun
def md5(filepath):
  hash_md5 = hashlib.md5()
  with open(filepath, "rb") as f:
    for chunk in iter(lambda: f.read(4096), b""):
      hash_md5.update(chunk)
      return hash_md5.hexdigest()
    
# Connect to the database
connection = pymysql.connect(host='10.8.80.238',
                             user='root',
                             password='root',
                             db='dbfreeloadr',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
path="../../import"+adminid+"/"
files = os.listdir(path) # returns list
print(files)
print(path)
fileid=0
for file in files:
    filepath=path+file
    filename, file_extension = os.path.splitext(filepath)
    print(file)
    print(filename)
    print(file_extension)
    
    print(filetype(filepath))
    print(md5(filepath))
    ts = datetime.datetime.now()
    with connection.cursor() as cursor:
        # Create a new record
        sql = "INSERT IGNORE dim_file (filedesc,MD5,extension,creation_date,type) VALUES (%s,%s,%s,%s,%s)"
        cursor.execute(sql, (file,md5(filepath),file_extension,ts,filetype(filepath)))
        sql = "select last_insert_id()"
        cursor.execute(sql)
        fileidx=cursor.fetchone();
        print('FILEID:'+str(fileidx['last_insert_id()']))
        fileid=fileidx['last_insert_id()']
    connection.commit()
    if filetype(filepath)=='text':
        with connection.cursor() as cursor:
            sql = "INSERT IGNORE dim_set (setdesc,MD5,extension,creation_date,type,fileid) VALUES (%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql,(file,md5(filepath),file_extension,ts,filetype(filepath),fileid))
            sql = "select last_insert_id()"
            cursor.execute(sql)
            setidx=cursor.fetchone();
            print('SETID:'+str(setidx['last_insert_id()']))
            setid=setidx['last_insert_id()']
            sql = "update dim_file set sets=1 where fileid=%s"
            cursor.execute(sql,(fileid,))
        connection.commit()
        copyfile(path+file,"../../flatfiles/set_"+str(setid)+".txt")
    if filetype(filepath)=='binary':
        print("something else")