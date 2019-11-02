*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem
Suite Setup     Connect To Database     pymysql    ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   sivanag123
${DBHost}   127.0.0.1
${DBPort}   3306

*** Test Cases ***
#Create person Table
   # ${output}=  execute sql string  Create table person(id integer,first_name varchar(20),last_name varchar(20),location varchar(15))
    #log to console  ${output}
   # should be equal as strings  ${output}   None

#Inserting data into person table
    #Single Record Insertion
    #${output}=  execute sql string  Insert into person values(101,"Mike","Hall","Hyderabad");

    #Multiple Records Insertion
    #${output}=  EXECUTE SQL SCRIPT  ./TestData/mydb_person_insertdata.sql
    #log to console  ${output}
    #should be equal as strings  ${output}   None

#Check David Record present in person table
    #check if exists in database  Select id from mydb.person where first_name="David";

#Check Jio Record not present in person table
    #check if not exists in database  Select id from mydb.person where first_name="Jio";

#Check person table exist in mydb database
 #   table must exist  person

#Verify row count is zero
 #   row count is 0  SELECT * FROM mydb.person where first_name='xyz';

#Verify row count is equal to some value
 #   row count is equal to x     SELECT * FROM mydb.person where first_name='David';    1

#Verify row count is greater than some value
 #   row count is greater than x     SELECT * FROM mydb.person where first_name='David';    0

#Verify row count is less than some value
 #   row count is less than x    SELECT * FROM mydb.person where first_name='David';    5

#Update record in person table
 #   ${output}=  execute sql string      update mydb.person set location="LA" where id=101;
  #  log to console  ${output}
   # should be equal as strings      ${output}   None
#Retrive records from person table
    #${QueryResults}=    query       select * from mydb.person;
    #log to console  many ${QueryResults}

Delete records from person table
    ${output}=  execute sql string      delete from mydb.person where id=104;
    should be equal as strings  ${output}   None

