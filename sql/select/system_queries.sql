select sysdate
  from dual;

select *
  from user_tables;

select *
  from all_tables;

--- Dynamic Performance Views --
select *
  from v$instance;

select *
  from v$version;

select *
  from v$database;

select *
  from v$session;

select *
  from v$archived_log;

select *
  from v$managed_standby;

select *
  from v$sga;

select *
  from v$sql;

select *
  from v$datafile;

select *
  from v$log;

select *
  from v$backup;

select *
  from v$tablespace;

select *
  from v$diag_alert_ext;

-- DBA Views --
select *
  from dba_tables;

select *
  from dba_tablespaces;

select *
  from dba_indexes;

select *
  from dba_data_files;

select *
  from dba_segments;

select *
  from dba_free_space;