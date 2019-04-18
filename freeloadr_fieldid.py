import os
import numpy as np
import pandas as pd
import pymysql.cursors
import pymysql
import string 
import re
import sys
import sqlalchemy
from sqlalchemy import create_engine
engine = create_engine("mysql+pymysql://root:root@10.8.80.238:3306/dbfreeloadr")
con2=engine.connect()
userid=sys.argv[1]
setid=sys.argv[2]
def clean_field(input):
    input = input.strip()
    input = input.replace(" ","")
    input = input.replace("~","")
    input = input.replace("`","")
    input = input.replace("!","_bang_")
    input = input.replace("@","_at_")
    input = input.replace("#","_hashtag_")
    input = input.replace("$","_dol_")
    input = input.replace("%","_pct_")
    input = input.replace("^","")
    input = input.replace("&","_and_")
    input = input.replace("*","")
    input = input.replace("(","")
    input = input.replace(")","")
    input = input.replace("-","")
    input = input.replace("+","_and_")
    input = input.replace("=","")
    input = input.replace("{","")
    input = input.replace("}","")
    input = input.replace("[","")
    input = input.replace("]","")
    input = input.replace("|","")
    input = input.replace(":","")
    input = input.replace(";","")
    input = input.replace("\"","")
    input = input.replace("\'","")
    input = input.replace("\\","")
    input = input.replace("/","")
    input = input.replace(",","")
    input = input.replace(".","")
    input = input.replace("?","")
    throughput = list(input)
    if input[0] == '1':
        throughput[0]='one'
    if input[0] == '2':
        throughput[0]='two'
    if input[0] == '3':
        throughput[0]='three'
    if input[0] == '4':
        throughput[0]='four'
    if input[0] == '5':
        throughput[0]='five'
    if input[0] == '6':
        throughput[0]='six'
    if input[0] == '7':
        throughput[0]='seven'
    if input[0] == '8':
        throughput[0]='eight'
    if input[0] == '9':
        throughput[0]='nine'
    if input[0] == '0':
        throughput[0]='zero'
    throughput2=''.join(throughput)
    return throughput2

connection = pymysql.connect(host='10.8.80.238',
                             user='root',
                             password='root',
                             db='dbfreeloadr',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

path="../../flatfiles/"
setidx=str(setid)
parser = lambda date: pd.datetime.strptime(date, '%Y-%m-%d')
with connection.cursor() as cursor:
    # Create a new record
    sql = "select type,extension from dim_set where setid=%s"
    cursor.execute(sql, (setid))
    filedetails = cursor.fetchone()
    #print(filedetails)
connection.commit()
with connection.cursor() as cursor:
    # Create a new record
    sql = "truncate table tblfields"
    cursor.execute(sql)
connection.commit()
###a text file CSV delimited
print(pd.__version__)
if filedetails['type']=='text' and filedetails['extension']=='.csv':
    supposed_delimiter=','
    with open(path+'set_'+setidx+'.txt', "r") as setx:
        headr = setx.readline()
        headr_delimiter_count = headr.count(',')
        real_headr=headr.split(",") 
        clean_headr=real_headr.copy()
        for i,field in enumerate(real_headr):
            real_headr[i]=real_headr[i].replace('\n','')
            clean_headr[i]=clean_field(real_headr[i])
            with connection.cursor() as cursor:
                sql = "insert tblFields (original_name, clean_name, final_name) values (%s,%s,%s)"
                cursor.execute(sql,(real_headr[i],clean_headr[i],clean_headr[i]))
            connection.commit()
        for i,line in enumerate(setx):
            farr=(re.split(''',(?=(?:[^'"]|'[^']*'|"[^"]*")*$)''', line))
            if len(farr)!=headr_delimiter_count+1:
                print("really bad line:"+str(i))
        dataf = pd.read_csv(path+'set_'+setidx+'.txt', quoting=2, delimiter = ',',skipinitialspace=True,parse_dates=True,infer_datetime_format=True, quotechar='"')
        dataf.columns = clean_headr
        print(dataf.dtypes)
        dataf.to_sql(con=con2, name='temp1', if_exists='replace')