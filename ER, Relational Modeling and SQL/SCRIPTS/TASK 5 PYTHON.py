import mysql.connector
import pandas as pd


mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="root",
  password="####", # Εισαγωγή κωδικού χρήστη mysql
  database="dmbi"
)
print("MySQL Database connection is successful")

mycursor=mydb.cursor()

sql=("SELECT L.L_CODE AS LOCATION_CODE, count/COUNT_2020 AS PERCENT_ASSESSMENT, loc_population/tot_population*100 AS PERCENT_POPULATION "
     "FROM (  "
         "SELECT L1.L_CODE "
     ",(SELECT COUNT(assessment.A_CODE)*10 FROM assessment,location,realestate WHERE realestate.L_CODE=L1.L_CODE AND assessment.RE_ID=realestate.RE_ID AND YEAR(assessment.DATE)=2020) AS count "
     ",(SELECT location.POPULATION FROM location WHERE location.L_CODE=L1.L_CODE) AS loc_population "
     ",(SELECT COUNT_2020 FROM NUMBER_OF_2020_ASSESSMENTS) AS count_2020  "
     ",(SELECT TOTAL_POPULATION FROM TOTAL_NUMBER_OF_POPULATION) AS tot_population "
    "FROM (SELECT distinct location.L_CODE FROM location,realestate,assessment WHERE location.L_CODE=realestate.L_CODE AND realestate.RE_ID=assessment.RE_ID) AS L1 "
     ") AS L " )


mycursor.execute(sql)

df=pd.DataFrame(mycursor,columns=['LOCATION CODE','PERCENT ASSESSMENT','PERCENT POPULATION '])

print(df)

print(1)

