#!/usr/bin/env bash

if [ $# -ne 1 ]; then 
	echo -e "Wrong number of arguments!\\nUSAGE: ./load_data.sh FILE_PATH\\n" 1>&2
	exit 1
fi

FILE_PATH="$1"

if [ -z "$FILE_PATH" ]; then 
	echo -e "Invalid file path!\\nUSAGE: ./load_data.sh FILE_PATH\\n" 1>&2
	exit 1
fi

DB_NAME="task1"
TMP_TABLE_NAME="LZ_COUNTRY_CODE_GOOGLE_TEMP_TXT"
TABLE_NAME="LZ_COUNTRY_CODE_GOOGLE"


hive -e "LOAD DATA LOCAL INPATH '$FILE_PATH' OVERWRITE INTO TABLE "$DB_NAME"."$TMP_TABLE_NAME";"

hive -e "INSERT INTO TABLE "$DB_NAME"."$TABLE_NAME" SELECT COUNTRY_CODE, COUNTRY_CODE3, COUNTRY_NAME, CURRENT_TIMESTAMP FROM "$DB_NAME"."$TMP_TABLE_NAME";"

hive -e "TRUNCATE TABLE "$DB_NAME"."$TMP_TABLE_NAME";"


table_row_count=$( cut -d " " -f 1 <<< $(hive -S -e "SELECT COUNT(*) FROM "$DB_NAME"."$TABLE_NAME";"))
file_row_count=$(($(wc -l < "$FILE_PATH")-1))

if [ $table_row_count -eq $file_row_count ]; then 
	echo -e "File "$FILE_PATH" loaded successfully!\\n"
else
	echo -e "There are some errors occurred.\\nLoaded "$table_row_count" rows instead of "$file_row_count" in source file\\n"
fi
