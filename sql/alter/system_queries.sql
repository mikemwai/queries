alter database open; --- Open the database to allow access to system views

alter user account_name
   account unlock; --- Unlock a specific user account_name

alter user account_name identified by "new_password"; --- Reset the password for the specific user account

alter system set sga_target = 600M scope = memory; --- Change the SGA target size in memory (To work with spfile, use scope = spfile)

alter session set nls_date_format = 'YYYY-MM-DD HH24:MI:SS'; --- Change the NLS date format for the current session

alter session set container=cdb$root; ------ Change current container to root
