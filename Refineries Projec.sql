--Cleaning the data

select*
from [OilProject]..['oil-gas$']

--Standardize Date format


select [StatusDate]
, convert (date, [Status Date])
from [OilProject]..['oil-gas$']


select [PermitIssuedDate]
, convert (date, [Permit Issued Date]) 
from [OilProject]..['oil-gas$']


select [DateLastModifiled]
, convert (date, [Date Last Moilfielddified])
from [OilProject]..['oil-gas$']

select [DateWellCoilfieldCompleted]
, convert (date, [Date Well Coilfield Completed]) 
from [OilProject]..['oil-gas$']

Select [StatusDate], [PermitIssuedDate], [DateLastModifiled], [DateWellCoilfieldCompleted]
from [OilProject]..['oil-gas$']


-- StatusDate
Alter Table ['oil-gas$']
Add statusDate Date;

Update ['oil-gas$']
Set StatusDate = convert(Date, [Status Date])

--PermitDate
Alter Table ['oil-gas$']
Add Permitissueddate Date;

Update ['oil-gas$']
Set PermitIssuedDate = convert(Date, [Permit Issued Date])

--DateLastModified
Alter Table ['oil-gas$']
Add DateLastModifiled Date;

Update ['oil-gas$']
Set dateLastModifiled = convert(Date, [Date Last Moilfielddified])

--DateWellCoilfieldCompleted
Alter Table ['oil-gas$']
Add DateWellCoilfieldCompleted Date;

Update ['oil-gas$']
Set DateWellCoilfieldCompleted = convert(Date, [Date Well Coilfield Completed])

--COILFIELDMPANY NAME

Select [Coilfieldmpany Name]
from [OilProject]..['oil-gas$']



select
SUBSTRING ([Coilfieldmpany Name], 1, CHARINDEX(',', [Coilfieldmpany Name])) as CompanyName
from [OilProject]..['oil-gas$']


select Distinct[Financial Security], count ([Financial Security])
from [OilProject]..['oil-gas$']
Group by [Financial Security]
order by 2


--Delete unsed colunms
select*
from [OilProject]..['oil-gas$']

alter table [OilProject].[dbo].['oil-gas$']
drop column [coilfieldunty Coilfieldde], [well name], [status date], [Permit Issued Date],[Date well coilfield completed],[Date Last Moilfielddified]

---Well Identification
Select [API Well Number], [API Hoilfieldle Number] , [Coilfieldmpany Name], [Well Type], [Well Status ], statusDate
from [OilProject].[dbo].['oil-gas$']
order by 1,2

