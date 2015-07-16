
use zabbix;

SET FOREIGN_KEY_CHECKS = 0;
SET SQL_SAFE_UPDATES = 0;

UPDATE zabbix.triggers SET value = 0 where value = 1;

UPDATE zabbix.events set value =0 where value = 1;


truncate table zabbix.events; 
optimize table zabbix.events;

truncate table escalations; 
optimize table escalations;

truncate table alerts; 
optimize table alerts; 

truncate table housekeeper; 
optimize table housekeeper;
update zabbix.ids set nextid = 1 where table_name = 'housekeeper'; 

truncate table acknowledges; 
optimize table acknowledges;
update zabbix.ids set nextid = 1 where table_name = 'acknowledges';

truncate table auditlog; 
optimize table auditlog;
update zabbix.ids set nextid = 1 where table_name = 'auditlog';  

truncate table auditlog_details; 
optimize table auditlog_details; 
update zabbix.ids set nextid = 1 where table_name = 'auditlog_details'; 

SET SQL_SAFE_UPDATES = 1;
SET FOREIGN_KEY_CHECKS = 1;
