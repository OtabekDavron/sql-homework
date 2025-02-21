--create a database for homework of lesson3
CrEaTe DaTaBaSe FOR_HW_L3

Go

UsE FOR_HW_L3

Go

Create Table iamprojects(
dbid int primary key, 
id varchar(20), 
name varchar(50),
type varchar(50))

Create Table iamroles(
dbid int primary key,
id varchar(20),
name varchar(50),
type varchar(50),
actions text)

Create Table iampolicies(
dbid int primary key,
id varchar(20),
name varchar(50),
type varchar(50))

Create Table iamstatements(
dbid int primary key,
effect varchar(100),
actions text,
resources text,
policyid int foreign key references iampolicies(dbid),
roleid int foreign key references iamroles(dbid))

Create Table iammembers(
dbid int primary key,
name varchar(50))

Create Table iampolicymembers(
memberid int foreign key references iammembers(dbid),
policyid int foreign key references iampolicies(dbid))

Create Table iamroleprojects(
roleid int foreign key references iamroles(dbid),
projectid int foreign key references iamprojects(dbid))

Create Table iamstatementprojects(
projectid int foreign key references iamprojects(dbid),
statementid int foreign key references iamstatements(dbid))

Create Table iampolicyprojects(
policyid int foreign key references iampolicies(dbid),
projectid int foreign key references iamprojects(dbid))

Create Table iamstagedprojectrules(
dbid int primary key,
id varchar(20),
name varchar(50),
type varchar(50),
status bit,
projectid int foreign key references iamprojects(dbid))

Create Table iamprojectrules(
dbid int primary key,
id varchar(20),
name varchar(50),
type varchar(50),
projectid int foreign key references iamprojects(dbid))

Create Table iamstagedruleconditions(
dbid int primary key,
ruledbid int foreign key references iamstagedprojectrules(dbid),
value text,
attribute varchar(50),
operator varchar(50))

Create Table iamruleconditions(
dbid int primary key,
ruledbid int foreign key references iamprojectrules(dbid),
value text,
attribute varchar(50),
operator varchar(50))

Create Table iamprojectsgraveyard(
dbid int primary key,
id varchar(20))

