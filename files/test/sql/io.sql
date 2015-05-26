set echo on
spool ./CreateTESTIO.log

create or replace directory importTESTDB as '/u01/app/oracle/importTESTDB';
grant read,write on DIRECTORY importTESTDB to TEST;
grant imp_full_database to TEST;
grant exp_full_database to TEST;

spool off
exit 0
