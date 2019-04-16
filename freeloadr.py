from __future__ import division
from IPython.display import clear_output
import fleep
import os
import numpy as np
import pandas as pd
import pymysql.cursors
import pymysql
import string 

def cleanstring(input):
    input = input.strip()
    input = input.replace(" ","")
    return input
#needed for is binary lambda
textchars = bytearray({7,8,9,10,12,13,27} | set(range(0x20, 0x100)) - {0x7f})
# Connect to the database
connection = pymysql.connect(host='10.8.80.238',
                             user='root',
                             password='root',
                             db='dbfreeloadr',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
path="../../import/"
files = os.listdir(path) # returns list
print(files)
for file in files:
    filename=path+file
    with connection.cursor() as cursor:
        # Create a new record
        sql = "INSERT IGNORE dim_file (filedesc) VALUES (%s)"
        cursor.execute(sql, (file))
    connection.commit()

    with connection.cursor() as cursor:
        # Read a single record
        sql = "SELECT fileid from dim_file where filedesc=%s"
        cursor.execute(sql, (file,))
        fileid = cursor.fetchone()
        print(fileid['fileid'])
    
    
    is_binary_string = lambda bytes: bool(bytes.translate(None, textchars))
    answer=is_binary_string(open(path+file, 'rb').read(1024))
    print(answer)
    if answer:
        with open(path+file, "rb") as filex:
            info = fleep.get(filex.read(128))
            str1 = ''.join(info.type)
            filename = path+file
            print('is binary says:')
            is_binary_string = lambda bytes: bool(bytes.translate(None, textchars))
            answer=is_binary_string(open(filename, 'rb').read(1024))
            print("binary says %s is %s"%(filename,answer))
            with connection.cursor() as cursor:
                # Read a single record
                sql = "update dim_file set typer=%s where fileid=%s"
                cursor.execute(sql, (str1,fileid['fileid'])) 
            connection.commit()
    else:
        print("else clause")
        print(fileid['fileid'])
        with connection.cursor() as cursor:                    
            sql = "update dim_file set typer=%s where fileid=%s"
            cursor.execute(sql, ('text/ascii',fileid['fileid']))
            sql = "INSERT IGNORE dim_set (setdesc) VALUES (%s)"
            cursor.execute(sql, (file))
            sql = "SELECT setid from dim_set where setdesc=%s"
            cursor.execute(sql, (file,))
            setid = cursor.fetchone()
        connection.commit()
        print(setid)
        #now we have to get with pandas and start trying to understand the columns
        #in the data
        with open(path+file, "r") as filex:
                dataf = pd.read_csv(path+file, delimiter = ',')
                fields = list(dataf)
                print(fields)
                fields2 = fields
                for i,f in enumerate(fields): 
                    field2 = cleanstring(f)
                    fields[i] = field2
                print(fields2)
                dataf.columns = fields2
                dataf.to_sql(con=connection, name='temp1', if_exists='replace', flavor='mysql')
                for field in fields:
                    print(field)
                    with connection.cursor() as cursor:
                        # Create a new record
                        sql = "INSERT IGNORE dim_field (fielddesc) VALUES (%s)"
                        cursor.execute(sql, (field,))
                        sql = "SELECT fieldid from dim_field where fielddesc=%s"
                        cursor.execute(sql, (field,))
                        fieldid = cursor.fetchone()
                        sql = "INSERT IGNORE lkup_set_field (setid,fieldid) values (%s,%s)"
                        cursor.execute(sql, (setid['setid'],fieldid['fieldid']))                       
                        
                    connection.commit()
                    
#print(info.type)  # prints ['raster-image']
#print(info.extension)  # prints ['png']
#print(info.mime)  # prints ['image/png']
#print(info.type_matches("raster-image"))  # prints True
#print(info.extension_matches("gif"))  # prints False
#print(info.mime_matches("image/png"))    