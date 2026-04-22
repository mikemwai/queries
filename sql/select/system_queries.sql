select sysdate
  from dual;

--- Dynamic Performance Views --
select *
  from v$instance; --- Check DB instance information (instance_name, host_name, database_status, startup_time, open_mode, log_mode, instance_role)

select *
  from v$version; --- Check Oracle Database version information

select *
  from v$database; ---- Check Database information (name, created, log_mode, open_mode, database_role)

select sid,
       serial#,
       username,
       status,
       event,
       program,
       logon_time
  from v$session
 order by logon_time desc; ---- Check active sessions (sid, serial#, username, status, event, program, logon_time)

select sid,
       serial#,
       username,
       status,
       event,
       blocking_session
  from v$session
 where blocking_session is not null; --- Check for blocking sessions

select sid,
       serial#,
       sql_id,
       event,
       state,
       username
  from v$session
 where username is not null; --- Check for slow SQL queries

select *
  from v$managed_standby;

---- DB Instance Components ----
---- 1) Memory ----
select *
  from v$sga; --- Check SGA components information

select *
  from v$sga_dynamic_components; --- Check detailed SGA components information

select *
  from v$sql; --- Check SQL execution statistics in shared pool

select sql_id,
       elapsed_time,
       cpu_time
  from v$sql
 order by elapsed_time desc
 fetch first 10 rows only; --- Check top 10 slowest SQL queries

----- 2) Processes ----
----- Background processes ----
select *
  from v$bgprocess
 where name in ( 'DBWn',
                 'LGWR',
                 'CKPT',
                 'SMON',
                 'PMON',
                 'LREG',
                 'ARCn' )
 order by name; --- Check background processes information

----- Database Components ----
---- 1) System Files -----
select *
  from v$controlfile; --- Check control file information

select *
  from v$parameter; --- Check all initialization parameters 

select *
  from v$controlfile_record_section; --- Check control file record sections (records_total, records_used)

select *
  from v$log;

select *
  from v$logfile; --- Check redo log file information

select *
  from v$datafile; --- Check system data files information

select *
  from v$archived_log; --- Check archived log information

select *
  from v$backup; --- Check backup information

----- 2) Data Files ----
----- Physical Components ----
select *
  from dba_data_files; --- Check datafile information

select file_name,
       bytes / 1024 / 1024 usage_in_mb,
       autoextensible
  from dba_data_files; --- Datafile usage in MBs

---- Logical Components ---
select *
  from v$tablespace;

select *
  from dba_tablespace_usage_metrics; --- Check tablespace usage

select *
  from dba_tablespaces; --- Tablespace, Block Size

select *
  from dba_segments; --- Check segment information (segment_name, segment_type, bytes, tablespace_name, extents, blocks)

select *
  from dba_extents; --- Check extent information (extent_id, file_id, blocks, bytes)

select *
  from dba_indexes;

---

select *
  from v$diag_alert_ext;

select *
  from v$diag_info; --- Get the location of the alert, trace, & incident log files

select *
  from v$system_event; --- Check system-wide wait events

select event,
       total_waits
  from v$system_event
 order by total_waits desc; --- Check top wait events by total waits

-- DBA Views --
select *
  from dba_tables;

select *
  from dba_free_space;

select *
  from dba_users;

select *
  from user_tables;

select *
  from all_tables;