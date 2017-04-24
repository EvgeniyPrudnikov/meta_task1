create table if not exists task1.LZ_COUNTRY_CODE_GOOGLE_TEMP_TXT (
	 country_code 	varchar(10)
	,country_code3 	varchar(10)
	,country_name 	varchar(100)
)
row format 				delimited
fields terminated by 	','
lines terminated by 	'\n'
stored as 				textfile
tblproperties("skip.header.line.count"="1") -- to skip header row
;


create table if not exists task1.LZ_COUNTRY_CODE_GOOGLE (
	 country_code 	varchar(10)
	,country_code3 	varchar(10)
	,country_name 	varchar(100)
	,load_datetime 	timestamp
)
row format 				delimited
fields terminated by 	','
lines terminated by 	'\n'
stored as 				parquet -- can be any needed format, depends on further business task
;
