alter database open; --- Open the database to allow access to system views

alter user account_name
   account unlock; --- Unlock a specific user account_name

alter user account_name identified by "new_password"; --- Reset the password for the specific user account