### TASK
> 1. Install any Hadoop + Hive distro
> 2. Attached file *country_code_google.csv* have to be loaded into hive table LZ_COUNTRY_CODE_GOOGLE
> 3. Please create this table and provide a script which does the following:
>	- Takes path of the file attached as an argument (local file system)
>	- Loads the data from file into table
>	- Queries the table and ensures data has been loaded properly (verify row count from hive query against actual number of rows in the file)
> 4. Provide a short description of what’s been done *in English*. Just a few words regarding what type of table are you using, how loading process organized etc.
> 
> *THINGS TO PAY ATTENTION TO*
> 1.	Header removal (first line)
> 2.	Thinking of maintaining data load history
> 3.	Table type, storage options and load options


### SOLUTION

To solve the provided task I used prepared virtual machine by cloudera
```
[cloudera@quickstart ~]$ uname -ra
Linux quickstart.cloudera 2.6.32-573.el6.x86_64 #1 SMP Thu Jul 23 15:44:03 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux
```
with *Hadoop* version 
```
[cloudera@quickstart ~]$ hadoop version
Hadoop 2.6.0-cdh5.10.0
Subversion http://github.com/cloudera/hadoop -r 307b3de961d083f6e8ee80ddba589f22cacd3662
Compiled by jenkins on 2017-01-20T20:12Z
Compiled with protoc 2.5.0
From source with checksum 9ee56c2ef46d6f9fae2f8b199c0e2c9

```
and *HIVE* of version
```
[cloudera@quickstart ~]$ hive --version 
Hive 1.1.0-cdh5.10.0
Subversion file:///data0/jenkins/workspace/generic-package-rhel64-6-0/topdir/BUILD/hive-1.1.0-cdh5.10.0 -r Unknown
Compiled by jenkins on Fri Jan 20 12:09:45 PST 2017
From source with checksum 4a42117e513a0970c0edf58cd0575d4e
```






