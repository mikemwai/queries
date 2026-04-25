# SQL *Plus Commands
- Start sql *plus by logging on to the local DB:
```sh
  sqlplus username/password
```

- Start sql *plus without logging on to the local DB:
```sh
  sqlplus /nolog
```

- Connect to a DB user:
```sh
  sql> conn / as sysdba
```

- Display currently logged in user:
```sh
  show user
```

- Run a script file:
```sh
  sqlplus username/password @list-dept
  sql> start list-dept.sql # Alternative Method
  sql> @list-dept # Alternative
```

- Display structure of a table:
```sh
  desc table_name
```

- Display sql *plus buffer contents:
```sh
  list
  l # Alternative
```

- Display sql *plus buffer contents in the standard editor:
```sh
  edit # Make changes to the sql query saved in the buffer and save the save file
  l # View the newly saved query in the buffer
  / # Run the forward slash to run the new saved query in the buffer
```

- Format the displayed column values:
```sh
  sql> col FIRST_NAME for a10 # Maximum values are 10 characters
       col SALARY for 999,999 # Using the 1,000 separator
```

- Save the buffer contents (SQL statements) into external files:
```sh
  save list-emps  
```

- Save output of sql statements into external files:
```sh
  spool filename.log
  /
  spool off // Contents ran between spool and spool off will be saved in the external file
  host notepad filename.log # View the file contents
```

- Invoke an OS command from within SQL plus:
```sh
  host dir # Use host command for Windows
```

- Set the prompt to display the username and connected database:
```sh
  set sqlprompt "_user'@'_connect_identifier'> '"
```















