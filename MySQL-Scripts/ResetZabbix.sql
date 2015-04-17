use zabbix;

SET FOREIGN_KEY_CHECKS = 0;

truncate table history; 
optimize table history; 

truncate table history_str; 
optimize table history_str; 

truncate table history_log; 
optimize table history_log; 

truncate table history_text; 
optimize table history_text; 

truncate table history_uint; 
optimize table history_uint; 

truncate table trends; 
optimize table trends; 

truncate table trends_uint; 
optimize table trends_uint; 

truncate table zabbix.events; 
optimize table zabbix.events;

truncate table escalations; 
optimize table escalations;

truncate table alerts; 
optimize table alerts;  

truncate table housekeeper; 
optimize table housekeeper;
update zabbix.ids set nextid = 1 where tablename = 'housekeeper';

truncate table acknowledges; 
optimize table acknowledges;
update zabbix.ids set nextid = 1 where tablename = 'acknowledges';    

truncate table auditlog; 
optimize table auditlog;
update zabbix.ids set nextid = 1 where tablename = 'auditlog';  

truncate table auditlog_details; 
optimize table auditlog_details; 
update zabbix.ids set nextid = 1 where tablename = 'auditlog_details';  

SET FOREIGN_KEY_CHECKS = 1;
