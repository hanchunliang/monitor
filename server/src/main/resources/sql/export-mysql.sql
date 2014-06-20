

  CREATE TABLE ge_monitor_account 
   (	
    ID VARCHAR(32), 
	LOGIN_NAME VARCHAR(100), 
	PASSWORD varchar(50), 
	NAME VARCHAR(50), 
	EMAIL VARCHAR(100), 
	PHONE VARCHAR(30), 
	CREATE_TIME timestamp, 
	STATUS VARCHAR(50)
   );
   alter table ge_monitor_account modify column ID VARCHAR(32) comment '�û�ID';
   alter table ge_monitor_account modify column LOGIN_NAME VARCHAR(100) comment '��¼��';
   alter table ge_monitor_account modify column PASSWORD varchar(50) comment '����';
   alter table ge_monitor_account modify column NAME VARCHAR(50) comment '�û���';
   alter table ge_monitor_account modify column EMAIL VARCHAR(100) comment '����';
   alter table ge_monitor_account modify column PHONE VARCHAR(30) comment '�绰';
   alter table ge_monitor_account modify column CREATE_TIME timestamp comment '����ʱ��';
   alter table ge_monitor_account modify column STATUS VARCHAR(50) comment '״̬';


  CREATE TABLE ge_monitor_account_auth 
   (	
    ID VARCHAR(32), 
	ACCOUNT_ID VARCHAR(32), 
	ROLE VARCHAR(10)
   ) ;

   alter table ge_monitor_account_auth modify column ID VARCHAR(32) comment '��Ȩid';
   alter table ge_monitor_account_auth modify column ACCOUNT_ID VARCHAR(32) comment '�û�ID';
   alter table ge_monitor_account_auth modify column ROLE VARCHAR(10) comment '��ɫ';
   alter table ge_monitor_account_auth comment '�û���Ȩ��';


  CREATE TABLE ge_monitor_alarm 
   (	
    ID VARCHAR(32), 
	SEVERITY VARCHAR(20), 
	MESSAGE VARCHAR(3000), 
	ALARM_SOURCE VARCHAR(20), 
	MONITOR_ID VARCHAR(32), 
	MONITOR_TYPE VARCHAR(50), 
	ATTRIBUTE_ID VARCHAR(32), 
	CREATE_TIME timestamp, 
	OWNER_NAME VARCHAR(100), 
	SUB_RESOURCE_TYPE VARCHAR(32), 
	SUB_RESOURCE_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_alarm modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_alarm modify column SEVERITY VARCHAR(20) comment '���ؼ���(severity)';
   alter table ge_monitor_alarm modify column MESSAGE VARCHAR(3000) comment '������Ϣ(message)';
   alter table ge_monitor_alarm modify column ALARM_SOURCE VARCHAR(20) comment '������Դ(��־,�쳣)';
   alter table ge_monitor_alarm modify column MONITOR_ID VARCHAR(32) comment '������ID';
   alter table ge_monitor_alarm modify column MONITOR_TYPE VARCHAR(50) comment '����������';
   alter table ge_monitor_alarm modify column ATTRIBUTE_ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_alarm modify column CREATE_TIME timestamp comment '����ʱ��(createtime)';
   alter table ge_monitor_alarm modify column OWNER_NAME VARCHAR(100) comment '������(ownername)';
   alter table ge_monitor_alarm modify column SUB_RESOURCE_TYPE VARCHAR(32) comment '����Դ����';
   alter table ge_monitor_alarm modify column SUB_RESOURCE_ID VARCHAR(32) comment '����ԴID';
   alter table ge_monitor_alarm comment 'Ӧ��ϵͳԤ����Ϣ��';


  CREATE TABLE ge_monitor_application 
   (	
    ID VARCHAR(32), 
	APPLICATION_NAME VARCHAR(100) not null, 
	CN_NAME VARCHAR(300), 
	APPLICATION_IP VARCHAR(100), 
	APPLICATION_PORT VARCHAR(5), 
	CREATE_TIME timestamp not null, 
	CREATOR_ID VARCHAR(32) not null, 
	MODIFY_TIME timestamp, 
	MODIFIER_ID VARCHAR(32), 
	STATUS VARCHAR(1) DEFAULT '1', 
	`INTERVAL` decimal(10,0) 
   ) ;

   alter table ge_monitor_application modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_application modify column APPLICATION_NAME VARCHAR(100) comment 'Ӧ��ϵͳӢ������';
   alter table ge_monitor_application modify column CN_NAME VARCHAR(300) comment 'Ӧ��ϵͳ��������';
   alter table ge_monitor_application modify column CREATE_TIME timestamp comment '����ʱ��';
   alter table ge_monitor_application modify column CREATOR_ID VARCHAR(32) comment '������ID';
   alter table ge_monitor_application modify column MODIFY_TIME timestamp comment '�޸�ʱ��';
   alter table ge_monitor_application modify column MODIFIER_ID VARCHAR(32) comment '�޸���ID';
   alter table ge_monitor_application modify column STATUS VARCHAR(1) comment '��Ч״̬:1��Ч,0ɾ��';
   alter table ge_monitor_application modify column `INTERVAL` decimal(10,0) comment '��ѯ���';
   alter table ge_monitor_application comment '�洢��Ҫ��ص�Ӧ��ϵͳ��Ϣ';


  CREATE TABLE ge_monitor_attribute 
   (	
    ID VARCHAR(32), 
	RESOURCE_TYPE VARCHAR(32), 
	ATTRIBUTE VARCHAR(255), 
	UNITS VARCHAR(10), 
	ATTRIBUTE_CN VARCHAR(255)
   ) ;

   alter table ge_monitor_attribute modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_attribute modify column RESOURCE_TYPE VARCHAR(32) comment '��Դ����';
   alter table ge_monitor_attribute modify column ATTRIBUTE VARCHAR(255) comment '����';
   alter table ge_monitor_attribute modify column UNITS VARCHAR(10) comment '��λ';
   alter table ge_monitor_attribute modify column ATTRIBUTE_CN VARCHAR(255) comment '������������';
   alter table ge_monitor_attribute comment '������Ϣ��';


  CREATE TABLE ge_monitor_attribute_action 
   (	
    ID VARCHAR(32) not null, 
	RESOURCE_ID VARCHAR(32) not null, 
	ATTRIBUTE_ID VARCHAR(32) not null, 
	ACTION_ID VARCHAR(32) not null, 
	ACTION_TYPE VARCHAR(20) not null, 
	SEVERITY VARCHAR(32) not null
   ) ;

   alter table ge_monitor_attribute_action modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_attribute_action modify column RESOURCE_ID VARCHAR(32) comment '��ԴID';
   alter table ge_monitor_attribute_action modify column ATTRIBUTE_ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_attribute_action modify column ACTION_ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_attribute_action modify column ACTION_TYPE VARCHAR(20) comment '��������';
   alter table ge_monitor_attribute_action modify column SEVERITY VARCHAR(32) comment '���س̶�';
   alter table ge_monitor_attribute_action comment '���Զ�����Ϣ��';


  CREATE TABLE ge_monitor_attribute_threshold 
   (	
    ID VARCHAR(32) not null, 
	RESOURCE_ID VARCHAR(32) not null, 
	ATTRIBUTE_ID VARCHAR(32) not null, 
	THRESHOLD_ID VARCHAR(32) not null
   ) ;

   alter table ge_monitor_attribute_threshold modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_attribute_threshold modify column RESOURCE_ID VARCHAR(32) comment '��ԴID';
   alter table ge_monitor_attribute_threshold modify column ATTRIBUTE_ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_attribute_threshold modify column THRESHOLD_ID VARCHAR(32) comment '��ֵID';
   alter table ge_monitor_attribute_threshold comment '������ֵ��Ϣ��';


  CREATE TABLE ge_monitor_biz_scenario 
   (	
    ID VARCHAR(32) not null, 
	NAME VARCHAR(300) not null, 
	BIZ_SCENARIO_GRADE VARCHAR(15), 
	APPLICATION_ID VARCHAR(32) not null, 
	CREATE_TIME timestamp not null, 
	CREATOR_ID VARCHAR(32) not null, 
	MODIFY_TIME timestamp, 
	MODIFIER_ID VARCHAR(32), 
	STATUS VARCHAR(1) DEFAULT '1'
   ) ;

   alter table ge_monitor_biz_scenario modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_biz_scenario modify column NAME VARCHAR(300) comment 'ҵ�񳡾�����';
   alter table ge_monitor_biz_scenario modify column BIZ_SCENARIO_GRADE VARCHAR(15) comment 'ҵ�񳡾�����';
   alter table ge_monitor_biz_scenario modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳID';
   alter table ge_monitor_biz_scenario modify column CREATE_TIME timestamp comment '����ʱ��';
   alter table ge_monitor_biz_scenario modify column CREATOR_ID VARCHAR(32) comment '������ID';
   alter table ge_monitor_biz_scenario modify column MODIFY_TIME timestamp comment '�޸�ʱ��';
   alter table ge_monitor_biz_scenario modify column MODIFIER_ID VARCHAR(32) comment '�޸���ID';
   alter table ge_monitor_biz_scenario modify column STATUS VARCHAR(1) comment '��Ч״̬:1��Ч,0ɾ��';
   alter table ge_monitor_biz_scenario comment '�洢ָ��Ӧ��ϵͳ��ҵ�񳡾���Ϣ';


  CREATE TABLE ge_monitor_biz_scenario_url 
   (	
    BIZ_SCENARIO_ID VARCHAR(32) not null, 
	URL_ID VARCHAR(32) not null
   ) ;

   alter table ge_monitor_biz_scenario_url modify column BIZ_SCENARIO_ID VARCHAR(32) comment 'ҵ�񳡾�ID';
   alter table ge_monitor_biz_scenario_url modify column URL_ID VARCHAR(32) comment 'URLID';
   alter table ge_monitor_biz_scenario_url comment 'Ӧ��ϵͳҵ�񳡾�URL��Ϣ��';


  CREATE TABLE ge_monitor_email_action 
   (	
    ID VARCHAR(32), 
	FROM_ADDRESS VARCHAR(250) not null, 
	TO_ADDRESS VARCHAR(250) not null, 
	SUBJECT VARCHAR(100) not null, 
	CONTENT VARCHAR(3000), 
	SMTP_SERVER VARCHAR(100), 
	SMTP_PORT VARCHAR(5), 
	MAIL_FORMAT VARCHAR(1), 
	APPEND_MESSAGE VARCHAR(100), 
	NAME VARCHAR(100) not null
   ) ;

   alter table ge_monitor_email_action modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_email_action modify column FROM_ADDRESS VARCHAR(250) comment '������ַ(fromaddress)';
   alter table ge_monitor_email_action modify column TO_ADDRESS VARCHAR(250) comment '�ռ���ַ(toaddress)';
   alter table ge_monitor_email_action modify column SUBJECT VARCHAR(100) comment '����(subject)';
   alter table ge_monitor_email_action modify column CONTENT VARCHAR(3000) comment '����(message)';
   alter table ge_monitor_email_action modify column SMTP_SERVER VARCHAR(100) comment '�ʼ�������(smtpserver)';
   alter table ge_monitor_email_action modify column SMTP_PORT VARCHAR(5) comment '�ʼ��������˿�(smtpport)';
   alter table ge_monitor_email_action modify column MAIL_FORMAT VARCHAR(1) comment '�ʼ���ʽ(mailformat)';
   alter table ge_monitor_email_action modify column APPEND_MESSAGE VARCHAR(100) comment '������Ϣ(appendmessage)';
   alter table ge_monitor_email_action modify column NAME VARCHAR(100) comment '��������(name)';
   alter table ge_monitor_email_action comment 'Ӧ��ϵͳ�ʼ�������Ϣ��';


  CREATE TABLE ge_monitor_eum_url 
   (	
    ID VARCHAR(32), 
	URL VARCHAR(300) not null, 
	APPLICATION_ID VARCHAR(32), 
	RECORD_TIME timestamp, 
	URL_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_eum_url modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_eum_url modify column URL VARCHAR(300) comment 'URL��ַ';
   alter table ge_monitor_eum_url modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳID';
   alter table ge_monitor_eum_url comment 'ҵ�����URL��Ϣ��';


  CREATE TABLE ge_monitor_eum_url_ava 
   (	
    ID VARCHAR(32), 
	EUM_URL_ID VARCHAR(32), 
	STATE VARCHAR(1), 
	RECORD_TIME timestamp, 
	`INTERVAL` decimal(10,0) not null 
   ) ;

   alter table ge_monitor_eum_url_ava modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_eum_url_ava modify column EUM_URL_ID VARCHAR(32) comment 'ҵ�����ID';
   alter table ge_monitor_eum_url_ava modify column STATE VARCHAR(1) comment '״̬ 1---���� 0---������';
   alter table ge_monitor_eum_url_ava modify column RECORD_TIME timestamp comment '��¼ʱ��';
   alter table ge_monitor_eum_url_ava modify column `INTERVAL` decimal(10,0) comment '��ѯ���';
   alter table ge_monitor_eum_url_ava comment 'Ӧ��ϵͳ��������ʱ��';


  CREATE TABLE ge_monitor_eum_url_ava_sta 
   (	
    ID VARCHAR(32), 
	EUM_URL_ID VARCHAR(32), 
	NORMAL_RUNTIME decimal(10,0) , 
	TOTAL_FAILURE_TIME decimal(10,0) , 
	FAILURE_COUNT decimal(10,0) , 
	AVG_FAILURE_TIME decimal(10,0) , 
	RECORD_TIME timestamp
   ) ;

   alter table ge_monitor_eum_url_ava_sta modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_eum_url_ava_sta modify column EUM_URL_ID VARCHAR(32) comment 'ҵ�����URLID';
   alter table ge_monitor_eum_url_ava_sta modify column NORMAL_RUNTIME decimal(10,0) comment '��������ʱ��';
   alter table ge_monitor_eum_url_ava_sta modify column TOTAL_FAILURE_TIME decimal(10,0) comment '��ʧ��ʱ��';
   alter table ge_monitor_eum_url_ava_sta modify column FAILURE_COUNT decimal(10,0) comment 'ֹͣ����';
   alter table ge_monitor_eum_url_ava_sta modify column AVG_FAILURE_TIME decimal(10,0) comment 'ƽ�����ϼ��ʱ��';
   alter table ge_monitor_eum_url_ava_sta modify column RECORD_TIME timestamp comment '��¼ʱ��';
   alter table ge_monitor_eum_url_ava_sta comment 'ҵ�����URL������ͳ�Ʊ�';


  CREATE TABLE ge_monitor_exception_info 
   (	
    ID VARCHAR(32), 
	APPLICATION_ID VARCHAR(32), 
	EXCEPTION_DESCRIPTION VARCHAR(500), 
	EXCEPTION_STACK_TRACE longtext, 
	RECORD_TIME timestamp, 
	URL_TRACE_LOG_ID VARCHAR(32), 
	ALARM_ID VARCHAR(32), 
	URL VARCHAR(300), 
	REQUEST_PARAMS longtext
   ) ;

   alter table ge_monitor_exception_info modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_exception_info modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳ';
   alter table ge_monitor_exception_info modify column EXCEPTION_DESCRIPTION VARCHAR(500) comment '�쳣����';
   alter table ge_monitor_exception_info modify column EXCEPTION_STACK_TRACE longtext comment '�쳣��ջ';
   alter table ge_monitor_exception_info modify column RECORD_TIME timestamp comment '�쳣ʱ��';
   alter table ge_monitor_exception_info modify column URL_TRACE_LOG_ID VARCHAR(32) comment 'URL׷����־ID';
   alter table ge_monitor_exception_info modify column ALARM_ID VARCHAR(32) comment '�澯��ϢID';
   alter table ge_monitor_exception_info modify column URL VARCHAR(300) comment 'URL��ַ';
   alter table ge_monitor_exception_info modify column REQUEST_PARAMS longtext comment 'URL�������';
   alter table ge_monitor_exception_info comment '��¼���е��쳣��Ϣ';


  CREATE TABLE ge_monitor_group 
   (	
    ID decimal(19,0) not null, 
	NAME VARCHAR(255) not null
   ) ;


  CREATE TABLE ge_monitor_group_permission 
   (	
    GROUP_ID decimal(19,0), 
	PERMISSION VARCHAR(255)
   ) ;


  CREATE TABLE ge_monitor_method 
   (	
    ID VARCHAR(32) not null, 
	DESCRIPTION VARCHAR(300), 
	CLASS_NAME VARCHAR(500) not null, 
	METHOD_NAME VARCHAR(100) not null, 
	THRESHOLD decimal(6,0), 
	CREATE_TIME timestamp not null, 
	CREATOR_ID VARCHAR(32) not null, 
	MODIFY_TIME timestamp, 
	MODIFIER_ID VARCHAR(32), 
	STATUS VARCHAR(1) DEFAULT '1'
   ) ;

   alter table ge_monitor_method modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_method modify column DESCRIPTION VARCHAR(300) comment '��������';
   alter table ge_monitor_method modify column CLASS_NAME VARCHAR(500) comment '������������';
   alter table ge_monitor_method modify column METHOD_NAME VARCHAR(100) comment '��������';
   alter table ge_monitor_method modify column THRESHOLD decimal(6,0) comment '������ֵ,��λms';
   alter table ge_monitor_method modify column CREATE_TIME timestamp comment '����ʱ��';
   alter table ge_monitor_method modify column CREATOR_ID VARCHAR(32) comment '������ID';
   alter table ge_monitor_method modify column MODIFY_TIME timestamp comment '�޸�ʱ��';
   alter table ge_monitor_method modify column MODIFIER_ID VARCHAR(32) comment '�޸���ID';
   alter table ge_monitor_method modify column STATUS VARCHAR(1) comment '��Ч״̬:1��Ч,0ɾ��';
   alter table ge_monitor_method comment 'Ӧ��ϵͳ������Ϣ��';


  CREATE TABLE ge_monitor_method_responsetime 
   (	
    ID VARCHAR(32), 
	METHOD_NAME VARCHAR(300), 
    URL_ID VARCHAR(32), 
	MIN_RESPONSE_TIME decimal(10,0), 
	MAX_RESPONSE_TIME decimal(10,0), 
	TOTAL_RESPONSE_TIME decimal(10,0) , 
	TOTAL_COUNT decimal(10,0) , 
	APPLICATION_ID VARCHAR(32), 
	RECORD_TIME timestamp, 
    METHOD_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_method_responsetime modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_method_responsetime modify column METHOD_NAME VARCHAR(300) comment '������';
   alter table ge_monitor_method_responsetime modify column URL_ID VARCHAR(32) comment 'URL��ϢID';
   alter table ge_monitor_method_responsetime modify column MIN_RESPONSE_TIME decimal(10,0) comment '��С��Ӧʱ��';
   alter table ge_monitor_method_responsetime modify column MAX_RESPONSE_TIME decimal(10,0) comment '�����Ӧʱ��';
   alter table ge_monitor_method_responsetime modify column TOTAL_RESPONSE_TIME decimal(10,0) comment '����Ӧʱ��';
   alter table ge_monitor_method_responsetime modify column TOTAL_COUNT decimal(10,0) comment '�ܴ���';
   alter table ge_monitor_method_responsetime modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳ';
   alter table ge_monitor_method_responsetime modify column RECORD_TIME timestamp comment '��¼ʱ��';
   alter table ge_monitor_method_responsetime modify column METHOD_ID VARCHAR(32) comment '������ϢID';
   alter table ge_monitor_method_responsetime comment '������Ӧʱ��';


  CREATE TABLE ge_monitor_method_tl_temp 
   (	
    ID VARCHAR(32), 
	URL_TRACE_LOG_ID VARCHAR(32), 
	METHOD_NAME VARCHAR(100), 
	CLASS_NAME VARCHAR(200), 
    IN_PARAM longtext, 
	OUT_PARAM longtext, 
	BEGIN_TIME timestamp, 
	END_TIME timestamp, 
	CONSUME_TIME decimal(10,0) , 
	RECORD_TIME timestamp, 
	METHOD_ID VARCHAR(32)
   ) ;


  CREATE TABLE ge_monitor_method_trace_log 
   (	
    ID VARCHAR(32), 
	URL_TRACE_LOG_ID VARCHAR(32), 
	METHOD_NAME VARCHAR(100), 
	CLASS_NAME VARCHAR(200), 
	IN_PARAM longtext, 
	OUT_PARAM longtext, 
	BEGIN_TIME timestamp, 
	END_TIME timestamp, 
	CONSUME_TIME decimal(10,0) , 
	RECORD_TIME timestamp, 
	METHOD_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_method_trace_log modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_method_trace_log modify column URL_TRACE_LOG_ID VARCHAR(32) comment 'URL׷����־ID';
   alter table ge_monitor_method_trace_log modify column METHOD_NAME VARCHAR(100) comment '������';
   alter table ge_monitor_method_trace_log modify column CLASS_NAME VARCHAR(200) comment '������������';
   alter table ge_monitor_method_trace_log modify column IN_PARAM longtext comment '�����������';
   alter table ge_monitor_method_trace_log modify column OUT_PARAM longtext comment '�����������';
   alter table ge_monitor_method_trace_log modify column BEGIN_TIME timestamp comment '������ʼʱ��';
   alter table ge_monitor_method_trace_log modify column END_TIME timestamp comment '��������ʱ��';
   alter table ge_monitor_method_trace_log modify column CONSUME_TIME decimal(10,0) comment 'URLִ��ʱ��';
   alter table ge_monitor_method_trace_log modify column RECORD_TIME timestamp comment '��־��¼ʱ��';
   alter table ge_monitor_method_trace_log modify column METHOD_ID VARCHAR(32) comment '������ϢID';
   alter table ge_monitor_method_trace_log comment '����׷����־��Ϣ��';



  CREATE TABLE ge_monitor_request_per_minute 
   (	
    ID VARCHAR(32), 
	APPLICATION_ID VARCHAR(32), 
    REQUEST_NUMBER decimal(10,0) , 
	RECORD_TIME timestamp
   ) ;

   alter table ge_monitor_request_per_minute modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_request_per_minute modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳID';
   alter table ge_monitor_request_per_minute modify column REQUEST_NUMBER decimal(10,0) comment '������';
   alter table ge_monitor_request_per_minute modify column RECORD_TIME timestamp comment '��¼ʱ��';
   alter table ge_monitor_request_per_minute comment 'Ӧ��ϵͳÿ����������';


  CREATE TABLE ge_monitor_resources 
   (	
    RESOURCE_ID VARCHAR(32), 
	RESOURCE_NAME VARCHAR(300), 
	RESOURCE_TYPE VARCHAR(100) not null
   ) ;

   alter table ge_monitor_resources modify column RESOURCE_ID VARCHAR(32) comment '��ԴID';
   alter table ge_monitor_resources modify column RESOURCE_NAME VARCHAR(300) comment '��Դ����';
   alter table ge_monitor_resources modify column RESOURCE_TYPE VARCHAR(100) comment '��Դ����';
   alter table ge_monitor_resources comment '��Դ��';


  CREATE TABLE ge_monitor_sms 
   (	
    ID VARCHAR(32), 
	APPID VARCHAR(50), 
	OWNER VARCHAR(100), 
	PHONENO VARCHAR(25), 
	CREATE_TIME timestamp, 
	STATUS VARCHAR(1), 
	REMARK VARCHAR(200)
   ) ;

   alter table ge_monitor_sms modify column ID VARCHAR(32) comment '����';
   alter table ge_monitor_sms modify column APPID VARCHAR(50) comment 'Ӧ��ID';
   alter table ge_monitor_sms modify column OWNER VARCHAR(100) comment '�û���';
   alter table ge_monitor_sms modify column PHONENO VARCHAR(25) comment '���ź���';
   alter table ge_monitor_sms modify column CREATE_TIME timestamp comment '����ʱ��';
   alter table ge_monitor_sms modify column STATUS VARCHAR(1) comment '����״̬';
   alter table ge_monitor_sms modify column REMARK VARCHAR(200) comment '��ע';


  CREATE TABLE ge_monitor_threshold 
   (	
    ID VARCHAR(32), 
	NAME VARCHAR(100), 
	DESCRIPTION VARCHAR(250), 
	CRITICAL_THRESHOLD_CONDITION VARCHAR(2), 
	CRITICAL_THRESHOLD_VALUE decimal(10,0) , 
	CRITICAL_THRESHOLD_MESSAGE VARCHAR(250), 
	WARNING_THRESHOLD_CONDITION VARCHAR(2), 
	WARNING_THRESHOLD_VALUE decimal(10,0) , 
	WARNING_THRESHOLD_MESSAGE VARCHAR(250), 
	INFO_THRESHOLD_CONDITION VARCHAR(2), 
	INFO_THRESHOLD_VALUE decimal(10,0) , 
	INFO_THRESHOLD_MESSAGE VARCHAR(250)
   ) ;

   alter table ge_monitor_threshold modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_threshold modify column NAME VARCHAR(100) comment '����';
   alter table ge_monitor_threshold modify column DESCRIPTION VARCHAR(250) comment '����';
   alter table ge_monitor_threshold modify column CRITICAL_THRESHOLD_CONDITION VARCHAR(2) comment '�ٽ���ֵ����';
   alter table ge_monitor_threshold modify column CRITICAL_THRESHOLD_VALUE decimal(10,0) comment '�ٽ���ֵֵ';
   alter table ge_monitor_threshold modify column CRITICAL_THRESHOLD_MESSAGE VARCHAR(250) comment '�ٽ���ֵ��Ϣ';
   alter table ge_monitor_threshold modify column WARNING_THRESHOLD_CONDITION VARCHAR(2) comment '������ֵ����';
   alter table ge_monitor_threshold modify column WARNING_THRESHOLD_VALUE decimal(10,0) comment '������ֵֵ';
   alter table ge_monitor_threshold modify column WARNING_THRESHOLD_MESSAGE VARCHAR(250) comment '������ֵ��Ϣ';
   alter table ge_monitor_threshold modify column INFO_THRESHOLD_CONDITION VARCHAR(2) comment '������ֵ����';
   alter table ge_monitor_threshold modify column INFO_THRESHOLD_VALUE decimal(10,0) comment '������ֵֵ';
   alter table ge_monitor_threshold modify column INFO_THRESHOLD_MESSAGE VARCHAR(250) comment '������ֵ��Ϣ';
   alter table ge_monitor_threshold comment '��ֵ��Ϣ��';


  CREATE TABLE ge_monitor_url 
   (	
    ID VARCHAR(32) not null, 
	DESCRIPTION VARCHAR(300), 
	URL VARCHAR(500) not null, 
	THRESHOLD decimal(6,0), 
	CREATE_TIME timestamp not null, 
	CREATOR_ID VARCHAR(32) not null, 
	MODIFY_TIME timestamp, 
	MODIFIER_ID VARCHAR(32), 
	STATUS VARCHAR(1) DEFAULT '1'
   ) ;

   alter table ge_monitor_url modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_url modify column DESCRIPTION VARCHAR(300) comment 'URL����';
   alter table ge_monitor_url modify column URL VARCHAR(500) comment 'URL��ַ';
   alter table ge_monitor_url modify column THRESHOLD decimal(6,0) comment 'URL��ֵ����λms';
   alter table ge_monitor_url modify column CREATE_TIME timestamp comment '����ʱ��';
   alter table ge_monitor_url modify column CREATOR_ID VARCHAR(32) comment '������ID';
   alter table ge_monitor_url modify column MODIFY_TIME timestamp comment '�޸�ʱ��';
   alter table ge_monitor_url modify column MODIFIER_ID VARCHAR(32) comment '�޸���ID';
   alter table ge_monitor_url modify column STATUS VARCHAR(1) comment '��Ч״̬:1��Ч,0ɾ��';
   alter table ge_monitor_url comment 'Ӧ��ϵͳURL��Ϣ��';


  CREATE TABLE ge_monitor_url_method 
   (	
    URL_ID VARCHAR(32), 
	METHOD_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_url_method modify column URL_ID VARCHAR(32) comment 'URLID';
   alter table ge_monitor_url_method modify column METHOD_ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_url_method comment 'Ӧ��ϵͳURL������Ϣ��';


  CREATE TABLE ge_monitor_url_response_time 
   (	
    ID VARCHAR(32), 
	URL VARCHAR(300), 
	URL_ID VARCHAR(32), 
	MIN_RESPONSE_TIME decimal(10,0) , 
	MAX_RESPONSE_TIME decimal(10,0) , 
	TOTAL_RESPONSE_TIME decimal(10,0) , 
	RECORD_TIME timestamp, 
	APPLICATION_ID VARCHAR(32), 
	TOTAL_COUNT decimal(10,0) 
   ) ;

   alter table ge_monitor_url_response_time modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_url_response_time modify column URL VARCHAR(300) comment 'URL��ַ';
   alter table ge_monitor_url_response_time modify column URL_ID VARCHAR(32) comment 'URL��ϢID';
   alter table ge_monitor_url_response_time modify column MIN_RESPONSE_TIME decimal(10,0) comment '��С��Ӧʱ��';
   alter table ge_monitor_url_response_time modify column MAX_RESPONSE_TIME decimal(10,0) comment '�����Ӧʱ��';
   alter table ge_monitor_url_response_time modify column TOTAL_RESPONSE_TIME decimal(10,0) comment '����Ӧʱ��';
   alter table ge_monitor_url_response_time modify column RECORD_TIME timestamp comment '��¼ʱ��';
   alter table ge_monitor_url_response_time modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳ';
   alter table ge_monitor_url_response_time modify column TOTAL_COUNT decimal(10,0) comment '�ܴ���';
   alter table ge_monitor_url_response_time comment 'URL��Ӧʱ��';


  CREATE TABLE ge_monitor_url_trace_log 
   (	
    ID VARCHAR(32) not null, 
	URL VARCHAR(500) not null, 
	URL_ID VARCHAR(32), 
	BIZ_SCENARIO_ID VARCHAR(32), 
	BEGIN_TIME timestamp, 
	END_TIME timestamp, 
	CONSUME_TIME decimal(10,0) , 
	SESSION_ID VARCHAR(100), 
	USER_ID VARCHAR(32), 
	USER_IP VARCHAR(100), 
	TRACE_ID VARCHAR(32), 
	REQUEST_PARAMS longtext, 
	ALARM_ID VARCHAR(32), 
	RECORD_TIME timestamp, 
	USERNAME VARCHAR(200), 
	APPLICATION_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_url_trace_log modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_url_trace_log modify column URL VARCHAR(500) comment 'URL��ַ';
   alter table ge_monitor_url_trace_log modify column URL_ID VARCHAR(32) comment 'URL��ϢID';
   alter table ge_monitor_url_trace_log modify column BIZ_SCENARIO_ID VARCHAR(32) comment '����ҵ�񳡾�ID';
   alter table ge_monitor_url_trace_log modify column BEGIN_TIME timestamp comment 'URL��ʼʱ��';
   alter table ge_monitor_url_trace_log modify column END_TIME timestamp comment 'URL����ʱ��';
   alter table ge_monitor_url_trace_log modify column CONSUME_TIME decimal(10,0) comment 'URLִ��ʱ��';
   alter table ge_monitor_url_trace_log modify column SESSION_ID VARCHAR(32) comment '�ỰID';
   alter table ge_monitor_url_trace_log modify column USER_ID VARCHAR(32) comment '�û�ID';
   alter table ge_monitor_url_trace_log modify column USER_IP VARCHAR(100) comment '�û�IP';
   alter table ge_monitor_url_trace_log modify column TRACE_ID VARCHAR(32) comment '׷��ID';
   alter table ge_monitor_url_trace_log modify column REQUEST_PARAMS longtext comment '���������Ϣ';
   alter table ge_monitor_url_trace_log modify column ALARM_ID VARCHAR(32) comment '�澯��ϢID';
   alter table ge_monitor_url_trace_log modify column RECORD_TIME timestamp comment '��־��¼ʱ��';
   alter table ge_monitor_url_trace_log modify column USERNAME VARCHAR(200) comment '�û���';
   alter table ge_monitor_url_trace_log modify column APPLICATION_ID VARCHAR(32) comment 'Ӧ��ϵͳID';
   alter table ge_monitor_url_trace_log comment '��¼Ӧ��ϵͳURL׷����־��Ϣ';


  CREATE TABLE ge_monitor_url_trace_log_temp 
   (	
    ID VARCHAR(32), 
	URL VARCHAR(500), 
	URL_ID VARCHAR(32), 
	BIZ_SCENARIO_ID VARCHAR(32), 
	BEGIN_TIME timestamp, 
	END_TIME timestamp, 
	CONSUME_TIME decimal(10,0) , 
	SESSION_ID VARCHAR(100), 
	USER_ID VARCHAR(32), 
	USER_IP VARCHAR(100), 
	TRACE_ID VARCHAR(32), 
	REQUEST_PARAMS longtext, 
	ALARM_ID VARCHAR(32), 
	RECORD_TIME timestamp, 
	USERNAME VARCHAR(200), 
	APPLICATION_ID VARCHAR(32)
   ) ;


  CREATE TABLE ge_monitor_url_visits_sta 
   (	
    ID VARCHAR(32), 
	URL_ID VARCHAR(32), 
	VISIT_NUMBER decimal(10,0) , 
	RECORD_TIME timestamp, 
	APPLICATION_ID VARCHAR(32)
   ) ;

   alter table ge_monitor_url_visits_sta modify column ID VARCHAR(32) comment '����ID';
   alter table ge_monitor_url_visits_sta modify column URL_ID VARCHAR(32) comment 'URL��ϢID';
   alter table ge_monitor_url_visits_sta modify column VISIT_NUMBER decimal(10,0)  comment '������';
   alter table ge_monitor_url_visits_sta modify column RECORD_TIME timestamp comment '��¼ʱ��';
   alter table ge_monitor_url_visits_sta modify column APPLICATION_ID VARCHAR(32) comment '����Ӧ��ϵͳID';
   alter table ge_monitor_url_visits_sta comment 'Ӧ��ϵͳURL������ͳ��';


  ALTER TABLE ge_monitor_account add primary key(ID);
  ALTER TABLE ge_monitor_account_auth add primary key(ID);
  ALTER TABLE ge_monitor_alarm add primary key(ID);
  ALTER TABLE ge_monitor_application add primary key(ID);
  ALTER TABLE ge_monitor_attribute add primary key(ID);
  ALTER TABLE ge_monitor_attribute_action add primary key(ID);
  ALTER TABLE ge_monitor_attribute_threshold add primary key(ID);
  ALTER TABLE ge_monitor_biz_scenario add primary key(ID);
  ALTER TABLE ge_monitor_email_action add primary key(ID);
  ALTER TABLE ge_monitor_eum_url add primary key(ID);
  ALTER TABLE ge_monitor_eum_url_ava add primary key(ID);
  ALTER TABLE ge_monitor_eum_url_ava_sta add primary key(ID);
  ALTER TABLE ge_monitor_exception_info add primary key(ID);
  ALTER TABLE ge_monitor_group add primary key(ID);
  ALTER TABLE ge_monitor_method add primary key(ID);
  ALTER TABLE ge_monitor_method_responsetime add primary key(ID);
  ALTER TABLE ge_monitor_method_tl_temp add primary key(ID);
  ALTER TABLE ge_monitor_method_trace_log add primary key(ID);
  ALTER TABLE ge_monitor_request_per_minute add primary key(ID);
  ALTER TABLE ge_monitor_resources add primary key(RESOURCE_ID);
  ALTER TABLE ge_monitor_sms add primary key(ID);
  ALTER TABLE ge_monitor_threshold add primary key(ID);
  ALTER TABLE ge_monitor_url add primary key(ID);
  ALTER TABLE ge_monitor_url_response_time add primary key(ID);
  ALTER TABLE ge_monitor_url_trace_log add primary key(ID);
  ALTER TABLE ge_monitor_url_trace_log_temp add primary key(ID);
  ALTER TABLE ge_monitor_url_visits_sta add primary key(ID);



  alter table ge_monitor_account_auth add foreign key FK_GE_MONIT_ACCOUNT_GE_MONIT (ACCOUNT_ID)
       references ge_monitor_account(ID);

  ALTER TABLE ge_monitor_biz_scenario ADD foreign key FK_BUSINESS_SCENARIO (APPLICATION_ID)
	  REFERENCES ge_monitor_application (ID);

  ALTER TABLE ge_monitor_biz_scenario_url ADD foreign key FK_BIZ_SCENARIO_URL_BIZ (BIZ_SCENARIO_ID)
	  REFERENCES ge_monitor_biz_scenario (ID);
	  
  ALTER TABLE ge_monitor_biz_scenario_url ADD foreign key FK_BIZ_SCENARIO_URL_URL (URL_ID)
	  REFERENCES ge_monitor_url (ID);

  ALTER TABLE ge_monitor_group_permission ADD foreign key FKAE243466DE3FB950 (GROUP_ID)
	  REFERENCES ge_monitor_group (ID);

  ALTER TABLE ge_monitor_url_method ADD foreign key FK_URL_METHOD_METHOD (METHOD_ID)
	  REFERENCES ge_monitor_method (ID);
	  
  ALTER TABLE ge_monitor_url_method ADD foreign key FK_URL_METHOD_URL (URL_ID)
	  REFERENCES ge_monitor_url (ID);




