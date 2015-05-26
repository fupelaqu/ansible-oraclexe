set echo on
spool ./CreateTESTTablespaces.log

drop tablespace TBS_TEST_DATA_M INCLUDING CONTENTS and datafiles CASCADE CONSTRAINTS;

create tablespace TBS_TEST_DATA_M 
	datafile '/u01/app/oracle/oradata/XE/TBS_TEST_DATA_M.dbf'
	size 32m 
	autoextend on 
	next 32m maxsize 128m
	extent management local;

drop tablespace TBS_TEST_TEMPORAIRE INCLUDING CONTENTS and datafiles CASCADE CONSTRAINTS;

create temporary tablespace TBS_TEST_TEMPORAIRE 
	tempfile '/u01/app/oracle/oradata/XE/TBS_TEST_TEMPORAIRE.dbf' 
	size 32m 
	autoextend on 
	next 32m maxsize 128m
	extent management local;

drop tablespace TBS_TEST_IDX_M INCLUDING CONTENTS and datafiles CASCADE CONSTRAINTS;

CREATE TABLESPACE TBS_TEST_IDX_M 
	DATAFILE '/u01/app/oracle/oradata/XE/TBS_TEST_IDX_M.dbf' 
	SIZE 32M REUSE
	AUTOEXTEND ON 
	NEXT 32M MAXSIZE 128M
	EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4M
	SEGMENT SPACE MANAGEMENT AUTO;

select * from v$tablespace;

exit 0
