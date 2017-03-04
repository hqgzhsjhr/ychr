

/*    所用驱动程序: Microsoft Visual Studio － Microsoft SQL Server 驱动程序。                            */
/*    文档: E:\hr开发\数据库设计.vsd。                                                                  */
/*    创建时间: 2007年5月31日 10:41。                                                                 */
/*    操作: 来自 Visio 生成向导。                                                                      */
/*    已连接的数据源: 没有连接。                                                                          */
/*    已连接的服务器: 没有连接。                                                                          */
/*    已连接的数据库: 不适用。                                                                           */



--SET QUOTED_IDENTIFIER ON
--
--
--
--
--/* 创建 HR_DB 数据库。                                                                              */
--use master  
--
--
--
--if exists (select * from sysdatabases where name = 'HR_DB')
--   drop database HR_DB
--
--
--create database HR_DB 
--ON PRIMARY
--	 ( NAME = hr_db, FILENAME = 'c:\hr_db.mdf', SIZE = 3 MB, MAXSIZE = UNLIMITED, FILEGROWTH = 256 KB )
--LOG ON
--	 ( NAME = hr_log, FILENAME = 'c:\hr_log.ldf', SIZE = 1 MB, MAXSIZE = UNLIMITED, FILEGROWTH = 256 KB )  
--
--
--
--use HR_DB  



/* 创建新表 user。                                                                               */
/* user : 用户表                                                                               */
/* 	user_id : 主键，自动增长列               
 * role 角色                                                       */
/* 	user_name : 用户名                                                                         */
/* 	user_true_name : 真实姓名                                                                   */
/* 	user_password : 密码       
 *                                                                */  
drop table users;
select * from users
create table users ( 
	u_id smallint primary key auto_increment not null,
	u_name varchar(60) not null,
	role varchar(100) not null,
	u_true_name varchar(60) not null,
	u_password  varchar(60) not null)  ;



insert into users(u_name,u_true_name,u_password) values('better_admin','zhangsan','123456')




/* 创建新表 config_file_first_kind。                                                             */
/* config_file_first_kind : 一级机构设置                                                          */
/* 	ffk_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	first_kind_salary_id : 一级机构薪酬发放责任人编号                                                    */
/* 	first_kind_sale_id : 一级机构销售责任人编号                                                        */  
create table config_file_first_kind ( 
	ffk_id smallint primary key auto_increment not null,
	first_kind_id char(2) ,
	first_kind_name varchar(60) ,
	first_kind_salary_id varchar(500) ,
	first_kind_sale_id varchar(500) ) ; 



insert into config_file_first_kind (
	first_kind_id ,	first_kind_name ,	first_kind_salary_id ,	first_kind_sale_id ) 
	values('01','jituan','1','1')


/* 创建新表 config_file_second_kind。                                                            */
/* config_file_second_kind : 二级机构设置                                                         */
/* 	fsk_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号   
 * 角色                                                              */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	second_salary_id : 二级机构薪酬发放责任人编号                                                        */
/* 	second_sale_id : 二级机构销售责任人编号                                                            */  
create table config_file_second_kind ( 
	fsk_id smallint primary key auto_increment not null,
	first_kind_id char(2) ,
	first_kind_name varchar(60) ,
	second_kind_id char(2) ,
	second_kind_name varchar(60) ,
	second_salary_id varchar(500) ,
	second_sale_id varchar(500) )  







insert into config_file_second_kind values(1,'01','jituan','01','ruanjian','1','1')
insert into config_file_second_kind values(2,'01','jituan','02','shengwugongsi','1','1')



/* 创建新表 config_file_third_kind。                                                             */
/* config_file_third_kind : 三级机构设置                                                          */
/* 	ftk_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号                                                                 */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	third_kind_id : 三级机构编号                                                                  */
/* 	third_kind_name : 三级机构名称                                                                */
/* 	third_kind_sale_id : 三级机构销售责任人编号                                                        */
/* 	third_kind_is_retail : 三级机构是否为零售店                                                       */  
create table config_file_third_kind ( 
	ftk_id smallint primary key auto_increment not null,
	first_kind_id char(2) ,
	first_kind_name varchar(60) ,
	second_kind_id char(2) ,
	second_kind_name varchar(60) ,
	third_kind_id char(2) ,
	third_kind_name varchar(60) ,
	third_kind_sale_id varchar(500) ,
	third_kind_is_retail char(2) )  






insert into config_file_third_kind values(3,'01','jituan','01','ruanjian','01','waibao','1','no');
insert into config_file_third_kind values(5,'01','jituan','02','shengwu','01','yaodian','1','ye')




/* 创建新表 config_question_first_kind。                                                         */
/* config_question_first_kind : 试题一级分类设置                                                    */
/* 	qfk_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 试题一级分类编号                                                                */
/* 	first_kind_name : 试题一级分类名称                                                              */  
create table config_question_first_kind ( 
	qfk_id smallint primary key auto_increment not null,
	first_kind_id char(2) ,
	first_kind_name varchar(60) )  







insert into config_question_first_kind values(1,'01','基础类');
insert into config_question_first_kind values(2,'02','技术类')




/* 创建新表 config_question_second_kind。                                                        */
/* config_question_second_kind : 试题二级分类设置                                                   */
/* 	qsk_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 试题一级分类编号                                                                */
/* 	first_kind_name : 试题一级分类名称                                                              */
/* 	second_kind_id : 试题二级分类编号                                                               */
/* 	second_kind_name : 试题二级分类名称                                                             */  
create table config_question_second_kind ( 
	qsk_id smallint primary key auto_increment not null,
	first_kind_id char(2) ,
	first_kind_name varchar(60) ,
	second_kind_id char(2) ,
	second_kind_name varchar(60) )  







insert into config_question_second_kind values('01','基础类','01','语言类')
insert into config_question_second_kind values('01','基础类','02','管理类')
insert into config_question_second_kind values('02','技术类','01','软件开发类')
insert into config_question_second_kind values('02','技术类','02','生物制药类')




/* 创建新表 config_public_char。                                                                 */
/* config_public_char : 公共字段设置，包括薪酬设置，职称设置，国籍，民族，宗教信仰，政治面貌，教育年限，学历,专业，特长，爱好，培训项目，培训成绩，奖励项目，奖励等级 */
/* 	pbc_id : 主键，自动增长列                                                                       */
/* 	attribute_kind : 属性的种类                                                                  */
/* 	attribute_name : 属性的名称                                                                  */  
create table config_public_char ( 
	pbc_id smallint primary key auto_increment not null,
	attribute_kind varchar(60) ,
	attribute_name varchar(60) )  







insert into config_public_char values('国籍','中国')
insert into config_public_char values('国籍','美国')
insert into config_public_char values('民族','汉族')
insert into config_public_char values('民族','回族')
insert into config_public_char values('宗教信仰','无')
insert into config_public_char values('宗教信仰','佛教')
insert into config_public_char values('政治面貌','党员')
insert into config_public_char values('政治面貌','群众')
insert into config_public_char values('教育年限','12')
insert into config_public_char values('教育年限','16')
insert into config_public_char values('学历','本科')
insert into config_public_char values('学历','大专')
insert into config_public_char values('专业','生物工程')
insert into config_public_char values('专业','计算机')
insert into config_public_char values('特长','数据库')
insert into config_public_char values('特长','java')
insert into config_public_char values('爱好','篮球')
insert into config_public_char values('爱好','舞蹈')
insert into config_public_char values('培训项目','英语')
insert into config_public_char values('培训项目','管理')
insert into config_public_char values('培训成绩','A')
insert into config_public_char values('培训成绩','B')
insert into config_public_char values('奖励项目','技术攻关')
insert into config_public_char values('奖励项目','销售绩效')
insert into config_public_char values('奖励等级','A')
insert into config_public_char values('奖励等级','B')
insert into config_public_char values('职称','工程师')
insert into config_public_char values('职称','经理')
insert into config_public_char values('职称','助理')
insert into config_public_char values('职称','教授')
insert into config_public_char values('职称','讲师')
insert into config_public_char values('职称','技术支持')
insert into config_public_char values('薪酬设置','出差补助')
insert into config_public_char values('薪酬设置','交通补贴')
insert into config_public_char values('薪酬设置','住房补贴')
insert into config_public_char values('薪酬设置','基本工资')
insert into config_public_char values('薪酬设置','年终奖')
insert into config_public_char values('薪酬设置','误餐补助')




/* 创建新表 config_primary_key。                                                                 */
/* config_primary_key : 关键字设置，包括人力资源管理，薪酬发放，激励管理，调动管理，薪酬标准，培训                               */
/* 	prk_id : 主键，自动增长列                                                                       */
/* 	primary_key_table : 关键字所涉及的数据库表名                                                        */
/* 	primary_key : 关键字                                                                  */
/* 	key_name : 中文关键字                                                                  */
/* 	primary_key_status : 是否为关键字                                                             */  
create table config_primary_key ( 
	prk_id smallint primary key auto_increment not null,
	primary_key_table varchar(60) null,
	primary_key varchar(60)  not null,
	key_name varchar(60)  not null,
	primary_key_status bit  not null)  








insert into config_primary_key values('HumanFile','firstKindName','I机机构名称',1)
insert into config_primary_key values('HumanFile','secondKindName','II机机构名称',1)
insert into config_primary_key values('HumanFile','thirdKindName','III机机构名称',1)
insert into config_primary_key values('HumanFile','humanId','档案编号',1)
insert into config_primary_key values('HumanFile','humanName','姓名',1)
insert into config_primary_key values('HumanFile','humanAddress','住址',1)
insert into config_primary_key values('HumanFile','humanPostcode','邮编',1)
insert into config_primary_key values('HumanFile','humanProDesignation','职称',1)
insert into config_primary_key values('HumanFile','humanMajorKindName','职位分类名称',1)
insert into config_primary_key values('HumanFile','hunmaMajorName','职位名称',1)
insert into config_primary_key values('HumanFile','humanBank','开户银行',1)
insert into config_primary_key values('HumanFile','humanAccount','银行帐号',1)
insert into config_primary_key values('HumanFile','humanTelephone','电话',1)
insert into config_primary_key values('HumanFile','humanMobilephone','手机号码',1)
insert into config_primary_key values('HumanFile','humanEmail','E-mail',1)
insert into config_primary_key values('HumanFile','humanHobby','爱好',1)
insert into config_primary_key values('HumanFile','humanSpeciality','特长',1)
insert into config_primary_key values('HumanFile','humanSex','性别',1)
insert into config_primary_key values('HumanFile','humanReligion','宗教信仰',1)
insert into config_primary_key values('HumanFile','humanParty','政治面貌',1)
insert into config_primary_key values('HumanFile','humanNationality','国籍',1)
insert into config_primary_key values('HumanFile','humanRace','民族',1)
insert into config_primary_key values('HumanFile','humanBirthday','生日',1)
insert into config_primary_key values('HumanFile','humanBirthplace','出生地',1)
insert into config_primary_key values('HumanFile','humanAge','年龄',1)
insert into config_primary_key values('HumanFile','humanEducatedDegree','学历',1)
insert into config_primary_key values('HumanFile','humanEducatedYears','教育年限',1)
insert into config_primary_key values('HumanFile','humanEducatedMajor','专业',1)
insert into config_primary_key values('HumanFile','humanSocietySecurityId','社会保障号码',1)
insert into config_primary_key values('HumanFile','humanIdCard','身份证号码',1)
insert into config_primary_key values('HumanFile','salaryStandardId','薪酬标准编号',1)
insert into config_primary_key values('HumanFile','salaryStandardName','薪酬标准',1)
insert into config_primary_key values('HumanFile','majorChangeAmount','调动次数',1)
insert into config_primary_key values('HumanFile','bonusAmount','激励次数',1)
insert into config_primary_key values('HumanFile','trainingAmount','培训次数',1)
insert into config_primary_key values('HumanFile','fileChangAmount','档案变更次数',1)
insert into config_primary_key values('HumanFile','remark','备注',1)
insert into config_primary_key values('HumanFile','humanHistroyRecords','简历',1)
insert into config_primary_key values('HumanFile','humanFamilyMembership','家庭关系',1)
insert into config_primary_key values('HumanFile','register','登记人',1)
insert into config_primary_key values('SalaryStandard','standardId','薪酬标准编号',1)
insert into config_primary_key values('SalaryStandard','standardName','薪酬标准名称',1)
insert into config_primary_key values('SalaryStandard','designer','设计人',1)
insert into config_primary_key values('SalaryGrant','salaryStandardId','薪酬标准编号',1)
insert into config_primary_key values('SalaryGrant','salaryGrantId','薪酬发放编号',1)
insert into config_primary_key values('Bonus','majorKindName','职位分类名称',1)
insert into config_primary_key values('Bonus','majorName','职位名称',1)
insert into config_primary_key values('Bonus','humanId','员工编号',1)
insert into config_primary_key values('Bonus','humanName','职员工姓名',1)
insert into config_primary_key values('Bonus','bonusItem','激励项目',1)
insert into config_primary_key values('Bonus','bonusDegree','激励等级',1)
insert into config_primary_key values('Bonus','remark','备注',1)
insert into config_primary_key values('Training','majorKindName','职位分类名称',1)
insert into config_primary_key values('Training','majorName','职位名称',1)
insert into config_primary_key values('Training','humanId','员工编号',1)
insert into config_primary_key values('Training','humanName','职员工姓名',1)
insert into config_primary_key values('Training','trainingItem','培训项目',1)
insert into config_primary_key values('Training','trainingDegree','培训等级',1)
insert into config_primary_key values('Training','remark','备注',1)
insert into config_primary_key values('MajorChange','firstKindName','I机机构',1)
insert into config_primary_key values('MajorChange','secondKindName','II机机构',1)
insert into config_primary_key values('MajorChange','thirdKindName','III机机构',1)
insert into config_primary_key values('MajorChange','majorKindName','职位分类',1)
insert into config_primary_key values('MajorChange','majorName','职位',1)
insert into config_primary_key values('MajorChange','humanId','员工编号',1)
insert into config_primary_key values('MajorChange','humanName','员工姓名',1)
insert into config_primary_key values('MajorChange','changeReason','调动原因',1)

/* 创建新表 config_major_kind。                                                                  */
/* config_major_kind : 职位分类设置                                                               */
/* 	mfk_id : 主键，自动增长列                                                                       */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职分类位名称                                                                */  
create table config_major_kind ( 
	mfk_id smallint primary key auto_increment not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60) null)  







insert into config_major_kind values(1,'01','sell');
insert into config_major_kind values(2,'02','ruanjian');
insert into config_major_kind values(3,'03','hr');
insert into config_major_kind values(4,'04','produce');



/* 创建新表 config_major。                                                                       */
/* config_major : 职位设置                                                                      */
/* 	mak_id : 主键，自动增长列                                                                       */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职位分类名称                                                                */
/* 	major_id : 职位编号                                                                         */
/* 	major_name : 职位名称                                                                       */ 
/* 	test_amount : 题套数量                                                                      */   
create table config_major ( 
	mak_id smallint primary key auto_increment not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60)  not null,
	major_id char(2)  not null,
	major_name varchar(60)  not null,
	test_amount smallint  not null)  







insert into config_major values(1,'01','sell','01','region manage',0);
insert into config_major values(2,'01','sell','02','general',0);
insert into config_major values(3,'02','ruanjian','01','xiangmujingli',0);
insert into config_major values(4,'02','ruanjian','02','manong',0);
insert into config_major values(5,'03','hr','01','renshijingli',0);
insert into config_major values(6,'03','hr','02','zhuaanyuan',0);
insert into config_major values(7,'04','produce','01','zhuren',0);
insert into config_major values(8,'04','produce','02','tecniqueworker',0);




/* 创建新表 HumanFile_dig。                                                                     */
/* human_file_dig : 记录人力资源档案所做的任何更改                                                         */
/* 	hfd_id : 主键，自动增长列                                                                       */
/* 	human_id : 档案编号                                                                         */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号                                                                 */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	third_kind_id : 三级机构编号                                                                  */
/* 	third_kind_name : 三级机构名称                                                                */
/* 	human_name : 姓名                                                                         */
/* 	human_address : 地址                                                                      */
/* 	human_postcode : 邮政编码                                                                   */
/* 	human_pro_designation : 职称                                                              */
/* 	human_major_kind_id : 职位分类编号                                                            */
/* 	human_major_kind_name : 职位分类名称                                                          */
/* 	human_major_id : 职位编号                                                                   */
/* 	hunma_major_name : 职位名称                                                                 */
/* 	human_telephone : 电话                                                                    */
/* 	human_mobilephone : 手机号码                                                                */
/* 	human_bank : 开户银行                                                                       */
/* 	human_account : 银行帐号                                                                    */
/* 	human_qq : QQ号码                                                                         */
/* 	human_email : 电子邮件                                                                      */
/* 	human_hobby : 爱好                                                                        */
/* 	human_speciality : 特长                                                                   */
/* 	human_sex : 性别                                                                          */
/* 	human_religion : 宗教信仰                                                                   */
/* 	human_party : 政治面貌                                                                      */
/* 	human_nationality : 国籍                                                                  */
/* 	human_race : 民族                                                                         */
/* 	human_birthday : 出生日期                                                                   */
/* 	human_birthplace : 出生地                                                                  */
/* 	human_age : 年龄                                                                          */
/* 	human_educated_degree : 学历                                                              */
/* 	human_educated_years : 教育年限                                                             */
/* 	human_educated_major : 学历专业                                                             */
/* 	human_society_security_id : 社会保障号                                                       */
/* 	human_id_card : 身份证号                                                                    */
/* 	remark : 备注                                                                             */
/* 	salary_standard_id : 薪酬标准编号                                                             */
/* 	salary_standard_name : 薪酬标准名称                                                           */
/* 	salary_sum : 基本薪酬总额                                                                     */
/* 	demand_salaray_sum : 应发薪酬总额                                                             */
/* 	paid_salary_sum : 实发薪酬总额                                                                */
/* 	major_change_amount : 调动次数                                                              */
/* 	bonus_amount : 激励累计次数                                                                   */
/* 	training_amount : 培训累计次数                                                                */
/* 	file_chang_amount : 档案变更累计次数                                                            */
/* 	human_histroy_records : 简历                                                              */
/* 	human_family_membership : 家庭关系                                                          */
/* 	human_picture : 相片                                                                      */
/* 	attachment_name : 附件名称                                                                  */
/* 	check_status : 复核状态                                                                     */
/* 	register : 档案登记人                                                                        */
/* 	checker : 档案复核人                                                                         */
/* 	changer : 档案变更人                                                                         */
/* 	regist_time : 档案登记时间                                                                    */
/* 	check_time : 档案复核时间                                                                     */
/* 	change_time : 档案变更时间                                                                    */
/* 	lastly_change_time : 档案最近更改时间                                                           */
/* 	delete_time : 档案删除时间                                                                    */
/* 	recovery_time : 档案恢复时间                                                                  */
/* 	human_file_status : 档案状态             
 *                                                    */  
drop table human_file_dig;
create table human_file_dig ( 
	hfd_id smallint primary key auto_increment not null,
	human_id varchar(30)  not null,
	first_kind_id char(2)  not null,
	first_kind_name varchar(60)  not null,
	second_kind_id char(2)  not null,
	second_kind_name varchar(60)  not null,
	third_kind_id char(2)  not null,
	third_kind_name varchar(60)  not null,
	human_name varchar(60)  not null,
	human_address varchar(200)  not null,
	human_postcode varchar(10)  not null,
	human_pro_designation varchar(60)  not null,
	human_major_kind_id char(2)  not null,
	human_major_kind_name varchar(60)  not null,
	human_major_id char(2)  not null,
	hunma_major_name varchar(60)  not null,
	human_telephone varchar(20)  not null,
	human_mobilephone char(11)  not null,
	human_bank varchar(50)  not null,
	human_account varchar(30)  not null,
	human_qq varchar(15)  not null,
	human_email varchar(50)  not null,
	human_hobby varchar(60)  not null,
	human_speciality varchar(60)  not null,
	human_sex char(2)  not null,
	human_religion varchar(50)  not null,
	human_party varchar(50)  not null,
	human_nationality varchar(50)  not null,
	human_race varchar(50)  not null,
	human_birthday datetime  not null,
	human_birthplace varchar(50)  not null,
	human_age smallint  not null,
	human_educated_degree varchar(60)  not null,
	human_educated_years smallint  not null,
	human_educated_major varchar(60)  not null,
	human_society_security_id varchar(30)  not null,
	human_id_card varchar(20) not null,
	remark varchar(500)  not null,
	salary_standard_id varchar(30)  not null,
	salary_standard_name varchar(60)  not null,
	salary_sum float(10,2)  not null,
	demand_salaray_sum float(10,2)  not null,
	paid_salary_sum float(10,2)  not null,
	major_change_amount smallint  not null,
	bonus_amount smallint  not null,
	training_amount smallint  not null,
	file_chang_amount smallint  not null,
	human_histroy_records varchar(500)  not null,
	human_family_membership varchar(500)  not null,
	human_picture varchar(255)  not null,
	attachment_name varchar(255)  not null,
	check_status smallint  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	changer varchar(60)  not null,
	regist_time datetime  not null,
	check_time datetime  not null,
	change_time datetime  not null,
	lastly_change_time datetime  not null,
	delete_time datetime  not null,
	recovery_time datetime  not null,
	human_file_status bit  not null)  



/* 创建新表 human_file。                                                                         */
/* human_file : 人力资源档案                                                                      */
/* 	huf_id : 主键，自动增长列                                                                       */
/* 	human_id : 档案编号                                                                         */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号                                                                 */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	third_kind_id : 三级机构编号                                                                  */
/* 	third_kind_name : 三级机构名称                                                                */
/* 	human_name : 姓名                                                                         */
/* 	human_address : 地址                                                                      */
/* 	human_postcode : 邮政编码                                                                   */
/* 	human_pro_designation : 职称                                                              */
/* 	human_major_kind_id : 职位分类编号                                                            */
/* 	human_major_kind_name : 职位分类名称                                                          */
/* 	human_major_id : 职位编号                                                                   */
/* 	hunma_major_name : 职位名称                                                                 */
/* 	human_telephone : 电话                                                                    */
/* 	human_mobilephone : 手机号码                                                                */
/* 	human_bank : 开户银行                                                                       */
/* 	human_account : 银行帐号                                                                    */
/* 	human_qq : QQ号码                                                                         */
/* 	human_email : 电子邮件                                                                      */
/* 	human_hobby : 爱好                                                                        */
/* 	human_speciality : 特长                                                                   */
/* 	human_sex : 性别                                                                          */
/* 	human_religion : 宗教信仰                                                                   */
/* 	human_party : 政治面貌                                                                      */
/* 	human_nationality : 国籍                                                                  */
/* 	human_race : 民族                                                                         */
/* 	human_birthday : 出生日期                                                                   */
/* 	human_birthplace : 出生地                                                                  */
/* 	human_age : 年龄                                                                          */
/* 	human_educated_degree : 学历                                                              */
/* 	human_educated_years : 教育年限                                                             */
/* 	human_educated_major : 学历专业                                                             */
/* 	human_society_security_id : 社会保障号                                                       */
/* 	human_id_card : 身份证号                                                                    */
/* 	remark : 备注                                                                             */
/* 	salary_standard_id : 薪酬标准编号                                                             */
/* 	salary_standard_name : 薪酬标准名称                                                           */
/* 	salary_sum : 基本薪酬总额                                                                     */
/* 	demand_salaray_sum : 应发薪酬总额                                                             */
/* 	paid_salary_sum : 实发薪酬总额                                                                */
/* 	major_change_amount : 调动次数                                                              */
/* 	bonus_amount : 激励累计次数                                                                   */
/* 	training_amount : 培训累计次数                                                                */
/* 	file_chang_amount : 档案变更累计次数                                                            */
/* 	human_histroy_records : 简历                                                              */
/* 	human_family_membership : 家庭关系                                                          */
/* 	human_picture : 相片                                                                      */
/* 	attachment_name : 附件名称                                                                  */
/* 	check_status : 复核状态                                                                     */
/* 	register : 档案登记人                                                                        */
/* 	checker : 档案复核人                                                                         */
/* 	changer : 档案变更人                                                                         */
/* 	regist_time : 档案登记时间                                                                    */
/* 	check_time : 档案复核时间                                                                     */
/* 	change_time : 档案变更时间                                                                    */
/* 	lastly_change_time : 档案最近更改时间                                                           */
/* 	delete_time : 档案删除时间                                                                    */
/* 	recovery_time : 档案恢复时间                                                                  */
/* 	human_file_status : 档案状态  
 *                                                               */  
	drop table human_file;
create table human_file ( 
	huf_id smallint primary key auto_increment not null,
	human_id varchar(30) not null,
	first_kind_id char(2) not null,
	first_kind_name varchar(60) not null,
	second_kind_id char(2) not null,
	second_kind_name varchar(60) not null,
	third_kind_id char(2) not null,
	third_kind_name varchar(60) not null,
	human_name varchar(60) not null,
	human_address varchar(200)  not null,
	human_postcode varchar(10)  not null,
	human_pro_designation varchar(60)  not null,
	human_major_kind_id char(2)  not null,
	human_major_kind_name varchar(60)  not null,
	human_major_id char(2)  not null,
	hunma_major_name varchar(60)  not null,
	human_telephone varchar(20)  not null,
	human_mobilephone char(11)  not null,
	human_bank varchar(50)  not null,
	human_account varchar(30)  not null,
	human_qq varchar(15)  not null,
	human_email varchar(50)  not null,
	human_hobby varchar(60)  not null,
	human_speciality varchar(60)  not null,
	human_sex char(2)  not null,
	human_religion varchar(50)  not null,
	human_party varchar(50)  not null,
	human_nationality varchar(50)  not null,
	human_race varchar(50)  not null,
	human_birthday datetime  not null,
	human_birthplace varchar(50)  not null,
	human_age smallint  not null,
	human_educated_degree varchar(60)  not null,
	human_educated_years smallint  not null,
	human_educated_major varchar(60)  not null,
	human_society_security_id varchar(30)  not null,
	human_id_card varchar(20)   not null,
	remark varchar(500)  not null,
	salary_standard_id varchar(30)  not null,
	salary_standard_name varchar(60)  not null,
	salary_sum float(10,2)  not null,
	demand_salaray_sum float(10,2)  not null,
	paid_salary_sum float(10,2)  not null,
	major_change_amount smallint  not null,
	bonus_amount smallint  not null,
	training_amount smallint  not null,
	file_chang_amount smallint  not null,
	human_histroy_records varchar(500)  not null,
	human_family_membership varchar(500)  not null,
	human_picture varchar(255)  not null,
	attachment_name varchar(255)  not null,
	check_status smallint  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	changer varchar(60)  not null,
	regist_time datetime  not null,
	check_time datetime  not null,
	change_time datetime  not null,
	lastly_change_time datetime  not null,
	delete_time datetime  not null,
	recovery_time datetime  not null,
	human_file_status bit  not null )  
登记


insert into human_file ( first_kind_id, first_kind_name, second_kind_id, second_kind_name, 
    third_kind_id, third_kind_name, human_name, human_address, human_postcode, human_pro_designation, 
    human_major_kind_id, human_major_kind_name, human_major_id, hunma_major_name, human_telephone, 
    human_mobilephone, human_bank, human_account, human_qq, human_email, human_hobby, 
    human_speciality, human_sex, human_religion, human_party, human_nationality, human_race, 
    human_birthday, human_birthplace, human_age, human_educated_degree, human_educated_years, 
    human_educated_major, human_society_security_id, human_id_card, salary_standard_id, 
    salary_standard_name, salary_sum, demand_salaray_sum, paid_salary_sum, major_change_amount, 
    bonus_amount, training_amount, file_chang_amount, human_picture, attachment_name, 
    check_status, register, checker, changer, regist_time, check_time, change_time, lastly_change_time, 
    delete_time, recovery_time, human_file_status)values('bt0101010001','01','Better集团','01','Better软件公司','01','外包组','fantia','北京海淀','100091','经理','02','软件开发','01','项目经理',
'','13699175041','建设银行','123456879586584','26284795','26284795@qq.com','舞蹈','java','女','无','党员','中国','汉族','1983-07-01','太原',24,'本科','16','生物工程','','140105198307010065',
'','','',0.00,0.00,0.00,0,0,0,0,'','','','',0,'admin','','','2007-05-31','','','','','',1)




/* 创建新表 salary_standard_details。                                                            */
/* salary_standard_details : 薪酬标准单详细信息                                                      */
/* 	sdt_id : 主键，自动增长列                                                                       */
/* 	standard_id : 薪酬标准单编号                                                                   */
/* 	standard_name : 薪酬标准单名称                                                                 */
/* 	item_id : 薪酬项目序号                                                                        */
/* 	item_name : 薪酬项目名称                                                                      */
/* 	salary : 薪酬金额                                                                           */  
create table salary_standard_details ( 
	sdt_id smallint primary key auto_increment not null,
	standard_id varchar(30) not null,
	standard_name varchar(60)  not null,
	item_id smallint  not null,
	item_name varchar(60)  not null,
	salary float(10,2)  not null)  







/* 创建新表 salary_standard。                                                                    */
/* salary_standard : 薪酬标准基本信息表                                                              */
/* 	ssd_id : 主键，自动增长列                                                                       */
/* 	standard_id : 薪酬标准单编号                                                                   */
/* 	standard_name : 薪酬标准单名称                                                                 */
/* 	designer : 制定者名字                                                                        */
/* 	register : 登记人                                                                          */
/* 	checker : 复核人                                                                           */
/* 	changer : 变更人                                                                           */
/* 	regist_time : 登记时间                                                                      */
/* 	check_time : 复核时间                                                                       */
/* 	change_time : 变更时间                                                                      */
/* 	salary_sum : 薪酬总额                                                                       */
/* 	check_status : 是否经过复核                                                                   */
/* 	change_status : 更改状态                                                                    */
/* 	check_comment : 复核意见                                                                   */ 
/* 	remark : 备注                                                                             */  
create table salary_standard ( 
	ssd_id smallint primary key auto_increment not null,
	standard_id varchar(30)  not null,
	standard_name varchar(60)  not null,
	designer varchar(60)  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	changer varchar(60)  not null,
	regist_time datetime  not null,
	check_time datetime  not null,
	change_time datetime  not null,
	salary_sum float(10,2)  not null,
	check_status smallint  not null,
	change_status smallint  not null,
	check_comment varchar(500)  not null,
	remark varchar(500)  not null)  







/* 创建新表 bonus。                                                                              */
/* bonus : 激励登记表                                                                            */
/* 	bon_id : 主键，自动增长列                                                                       */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职位分类名称                                                                */
/* 	major_id : 职位编号                                                                         */
/* 	major_name : 职位名称                                                                       */
/* 	human_id : 人力资源档案编号                                                                     */
/* 	human_name : 姓名                                                                         */
/* 	bonus_item : 激励项目名称                                                                     */
/* 	bonus_worth : 激励价值                                                                      */
/* 	bonus_degree : 激励等级                                                                     */
/* 	remark : 备注                                                                             */
/* 	register : 登记人                                                                          */
/* 	checker : 复核人                                                                           */
/* 	regist_time : 登记时间                                                                      */
/* 	check_time : 复核时间                                                                       */
/* 	check_status : 复核状态                                                                     */  
create table bonus ( 
	bon_id smallint primary key auto_increment   not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60)  not null,
	major_id char(2)  not null,
	major_name varchar(60)  not null,
	human_id varchar(30)  not null,
	human_name varchar(60)  not null,
	bonus_item varchar(60)  not null,
	bonus_worth float(10,2)  not null,
	bonus_degree varchar(60)  not null,
	remark varchar(500)  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	regist_time datetime  not null,
	check_time datetime  not null,
	check_status smallint  not null)  







/* 创建新表 training。                                                                           */
/* training : 培训登记表                                                                         */
/* 	tra_id : 主键，自动增长列                                                                       */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职位分类名称                                                                */
/* 	major_id : 职位名称                                                                         */
/* 	major_name : 职位名称                                                                       */
/* 	human_id : 人力资源档案编号                                                                     */
/* 	human_name : 姓名                                                                         */
/*	training_item ：培训项目										*/
/* 	training_time : 培训时间                                                                    */
/* 	training_hour : 培训课时                                                                    */
/* 	training_degree : 培训成绩等级                                                                */
/* 	register : 登记人                                                                          */
/* 	checker : 复核人                                                                           */
/* 	regist_time : 登记时间                                                                      */
/* 	check_time : 复核时间                                                                       */
/* 	checkstatus : 培训复核状态                                                                    */
/* 	remark : 备注                                                                             */  
create table training ( 
	tra_id smallint primary key auto_increment not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60)  not null,
	major_id char(2)  not null,
	major_name varchar(60)  not null,
	human_id varchar(30)  not null,
	human_name varchar(60)  not null,
	training_item varchar(60)  not null,
	training_time datetime  not null,
	training_hour int  not null,
	training_degree varchar(60)  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	regist_time datetime  not null,
	check_time datetime  not null,
	checkstatus smallint  not null,
	remark varchar(500)  not null)  






/* 创建新表 major_change。                                                                       */
/* major_change : 职位调动表                                                                     */
/* 	mch_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号                                                                 */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	third_kind_id : 三级机构编号                                                                  */
/* 	third_kind_name : 三级机构名称                                                                */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职位分类名称                                                                */
/* 	major_id : 职位编号                                                                         */
/* 	major_name : 职位名称                                                                       */
/* 	new_first_kind_id : 新一级机构编号                                                             */
/* 	new_first_kind_name : 新一级机构名称                                                           */
/* 	new_second_kind_id : 新二级机构编号                                                            */
/* 	new_second_kind_name : 新二级机构名称                                                          */
/* 	new_third_kind_id : 新三级机构编号                                                             */
/* 	new_third_kind_name : 新三级机构名称                                                           */
/* 	new_major_kind_id : 新职位分类编号                                                             */
/* 	new_major_kind_name : 新职位分类名称                                                           */
/* 	new_major_id : 新职位编号                                                                    */
/* 	new_major_name : 新职位名称                                                                  */
/* 	human_id : 人力资源档案编号                                                                     */
/* 	human_name : 姓名                                                                         */
/* 	salary_standard_id : 薪酬标准编号                                                             */
/* 	salary_standard_name : 薪酬标准名称                                                           */
/* 	salary_sum : 薪酬总额                                                                       */
/* 	new_salary_standard_id : 新薪酬标准编号                                                        */
/* 	new_salary_standard_name : 新薪酬标准名称                                                      */
/* 	new_salary_sum : 新薪酬总额                                                                  */
/* 	change_reason : 调动原因                                                                    */
/* 	check_reason : 审核通过意见                                                                   */
/* 	check_status : 复核通过状态                                                                   */
/* 	register : 登记人                                                                          */
/* 	checker : 复核人                                                                           */
/* 	regist_time : 登记时间                                                                      */
/* 	check_time : 复核时间                                                                       */  
create table major_change ( 
	mch_id smallint primary key auto_increment not null,
	first_kind_id char(2)  not null,
	first_kind_name varchar(60)  not null,
	second_kind_id char(2)  not null,
	second_kind_name varchar(60)  not null,
	third_kind_id char(2)  not null,
	third_kind_name varchar(60)  not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60)  not null,
	major_id char(2)  not null,
	major_name varchar(60)  not null,
	new_first_kind_id char(2)  not null,
	new_first_kind_name varchar(60)  not null,
	new_second_kind_id char(2)  not null,
	new_second_kind_name varchar(60)  not null,
	new_third_kind_id char(2)  not null,
	new_third_kind_name varchar(60)  not null,
	new_major_kind_id char(2)  not null,
	new_major_kind_name varchar(60)  not null,
	new_major_id char(2)  not null,
	new_major_name varchar(60)  not null,
	human_id varchar(30)  not null,
	human_name varchar(60)  not null,
	salary_standard_id varchar(30)  not null,
	salary_standard_name varchar(60)  not null,
	salary_sum float(10,2)  not null,
	new_salary_standard_id varchar(30)  not null,
	new_salary_standard_name varchar(60)  not null,
	new_salary_sum float(10,2)  not null,
	change_reason varchar(500)  not null,
	check_reason varchar(500)  not null,
	check_status smallint  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	regist_time datetime  not null,
	check_time datetime  not null)  








/* 创建新表 salary_grant。                                                                       */
/* salary_grant : 薪酬发放登记表                                                                   */
/* 	sgr_id : 主键，自动增长列                                                                       */
/* 	salary_grant_id : 薪酬发放编号                                                                */
/* 	salary_standard_id : 薪酬标准单编号                                                            */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号                                                                 */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	third_kind_id : 三级机构编号                                                                  */
/* 	third_kind_name : 三级机构名称                                                                */
/* 	human_amount : 总人数                                                                      */
/* 	salary_standard_sum : 标准薪酬总金额                                                           */
/* 	salary_paid_sum : 实发总金额                                                                 */
/* 	register : 登记人                                                                          */
/* 	regist_time : 登记时间                                                                      */
/* 	checker : 复核人                                                                           */
/* 	check_time : 复核时间                                                                       */
/* 	check_status : 复核状态                                                                     */  
create table salary_grant ( 
	sgr_id smallint primary key auto_increment not null,
	salary_grant_id varchar(30)  not null,
	salary_standard_id varchar(30)  not null,
	first_kind_id char(2)  not null,
	first_kind_name varchar(60)  not null,
	second_kind_id char(2)  not null,
	second_kind_name varchar(60)  not null,
	third_kind_id char(2)  not null,
	third_kind_name varchar(60)  not null,
	human_amount smallint  not null,
	salary_standard_sum float(10,2)  not null,
	salary_paid_sum float(10,2)  not null,
	register varchar(60)  not null,
	regist_time datetime  not null,
	checker varchar(60)  not null,
	check_time datetime  not null,
	check_status smallint  not null)  







/* 创建新表 salary_grant_details。                                                               */
/* salary_grant_details : 薪酬发放详细信息                                                          */
/* 	grd_id : 主键，自动增长列                                                                       */
/* 	salary_grant_id : 薪酬发放编号                                                                */
/* 	human_id : 档案编号                                                                         */
/* 	human_name : 姓名                                                                         */
/* 	bouns_sum : 奖励金额                                                                        */
/* 	sale_sum : 销售绩效金额                                                                       */
/* 	deduct_sum : 应扣金额                                                                       */
/* 	salary_standard_sum : 标准薪酬总额                                                            */
/* 	salary_paid_sum : 实发薪酬总额                                                                */  
create table salary_grant_details ( 
	grd_id smallint primary key auto_increment not null,
	salary_grant_id varchar(30)  not null,
	human_id varchar(30)  not null,
	human_name varchar(60)  not null,
	bouns_sum float(10,2)  not null,
	sale_sum float(10,2)  not null,
	deduct_sum float(10,2)  not null,
	salary_standard_sum float(10,2)  not null,
	salary_paid_sum float(10,2)  not null)  







/* 创建新表 engage _major_ release。                                                               */
/* engage_major_release : 职位发表登记表                                                           */
/* 	mre_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 一级机构编号                                                                  */
/* 	first_kind_name : 一级机构名称                                                                */
/* 	second_kind_id : 二级机构编号                                                                 */
/* 	second_kind_name : 二级机构名称                                                               */
/* 	third_kind_id : 三级机构编号                                                                  */
/* 	third_kind_name : 三级机构名称                                                                */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职位分类名称                                                                */
/* 	major_id : 职位编号                                                                         */
/* 	major_name : 职位名称                                                                       */
/* 	human_amount : 招聘人数                                                                     */
/* 	engage_type : 招聘类型                                                                      */
/* 	deadline : 截至日期                                                                         */
/* 	register : 登记人                                                                          */
/* 	changer : 变更人                                                                           */
/* 	regist_time : 登记时间                                                                      */
/* 	change_time : 变更时间                                                                      */
/* 	major_describe : 职位描述                                                                   */
/* 	engage_required : 招聘要求                                                                  */  
create table engage_major_release ( 
	mre_id smallint primary key auto_increment not null,
	first_kind_id char(2)  not null,
	first_kind_name varchar(60)  not null,
	second_kind_id char(2)  not null,
	second_kind_name varchar(60)  not null,
	third_kind_id char(2)  not null,
	third_kind_name varchar(60)  not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60)  not null,
	major_id char(2)  not null,
	major_name varchar(60)  not null,
	human_amount smallint  not null,
	engage_type varchar(60)  not null,
	deadline datetime  not null,
	register varchar(60)  not null,
	changer varchar(60)  not null,
	regist_time datetime  not null,
	change_time datetime  not null,
	major_describe varchar(500)  not null,
	engage_required varchar(500)  not null)  







/* 创建新表 engage_exam_details。                                                                */
/* engage_exam_details : 试卷详细信息                                                             */
/* 	exd_id : 主键，自动增长列                                                                       */
/* 	exam_number : 试卷编号                                                                      */
/* 	first_kind_id : 试题一级分类编号                                                                */
/* 	first_kind_name : 试题一级分类名称                                                              */
/* 	second_kind_id : 试题二级分类编号                                                               */
/* 	second_kind_name : 试题二级分类名称                                                             */
/* 	question_amount : 出题数量                                                                  */  
create table engage_exam_details ( 
	exd_id smallint primary key auto_increment not null,
	exam_number varchar(30)  not null,
	first_kind_id char(2)  not null,
	first_kind_name varchar(60)  not null,
	second_kind_id char(2)  not null,
	second_kind_name varchar(60)  not null,
	question_amount smallint  not null)  







/* 创建新表 engage_exam。                                                                        */
/* engage_exam : 试卷登记表                                                                      */
/* 	exa_id : 主键，自动增长列                                                                       */
/* 	exam_number : 试卷编号                                                                      */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : 职位分类名称                                                                */
/* 	major_id : 职位编号                                                                         */
/* 	major_name : 职位名称                                                                       */
/* 	register : 登记人                                                                          */
/* 	regist_time : 登记时间                                                                      */
/* 	limite_time : 答题限时                                                                      */  
create table engage_exam ( 
	exa_id smallint primary key auto_increment not null,
	exam_number varchar(30)  not null,
	major_kind_id char(2)  not null,
	major_kind_name varchar(60)  not null,
	major_id char(2)  not null,
	major_name varchar(60)  not null,
	register varchar(60)  not null,
	regist_time datetime  not null,
	limite_time smallint  not null)  







/* 创建新表 engage_answer。                                                                      */
/* engage_answer : 考试答题登记表                                                                  */
/* 	ans_id : 主键，自动增长列                                                                       */
/* 	answer_number : 答案编号                                                                    */
/* 	exam_number : 试卷编号                                                                      */
/* 	resume_id : 简历编号                                                                      */
/* 	interview_id : 面试编号                                                                      */
/* 	human_name : 姓名                                                                         */
/* 	human_idcard : 身份证号                                                                     */
/* 	major_kind_id : 职位分类编号                                                                  */
/* 	major_kind_name : major_kind_name 属于 engage_answer                                      */
/* 	major_id : major_id 属于 engage_answer                                                    */
/* 	major_name : major_name 属于 engage_answer                                                */
/* 	test_time : 测试时间                                                                        */
/* 	use_time : use_time 属于 engage_answer                                                    */
/* 	total_point : 总分                                                                        */  
create table engage_answer ( 
	ans_id smallint primary key auto_increment not null,
	answer_number varchar(30)  not null,
	exam_number varchar(30)  not null,
	resume_id smallint  not null,
	interview_id smallint  not null,
	human_name varchar(60)  not null,
	human_idcard varchar(30)  not null,
	major_kind_id char(2)  not null,
	major_kind_name char(10)  not null,
	major_id char(10)  not null,
	major_name char(10)  not null,
	test_time datetime  not null,
	use_time varchar(20)  not null,
	total_point numeric(5,2)  not null)  







/* 创建新表 engage_answer_details。                                                              */
/* engage_answer_details : 考试答题详细信息                                                         */
/* 	and_id : 答案详细信息                                                                         */
/* 	answer_number : 答案编号                                                                    */
/* 	subject_id : 试题编号                                                                       */
/* 	answer : 答题者答案                                                                          */  
create table engage_answer_details ( 
	and_id smallint primary key auto_increment not null,
	answer_number varchar(30)  not null,
	subject_id smallint  not null,
	answer varchar(10)  not null)  







/* 创建新表 engage_subjects。                                                                    */
/* engage_subjects : 试题题库登记表                                                                */
/* 	sub_id : 主键，自动增长列                                                                       */
/* 	first_kind_id : 试题I级分类编号                                                                */
/* 	first_kind_name : 试题I级分类名称                                                              */
/* 	second_kind_id : 试题II级分类编号                                                              */
/* 	second_kind_name : 试题II级分类名称                                                            */
/* 	register : 登记人                                                                          */
/* 	regist_time : 登记时间                                                                      */
/* 	derivation : 试题出处                                                                       */
/* 	content : 题干                                                                            */
/* 	key_a : 答案a                                                                             */
/* 	key_b : 答案b                                                                             */
/* 	key_c : 答案c                                                                             */
/* 	key_d : 答案d                                                                             */
/* 	key_e : 答案e                                                                             */
/* 	correct_key : 正确答案                                                                      */
/* 	changer : 变更人                                                                           */
/* 	change_time : 变更时间                                                                      */  
create table engage_subjects ( 
	sub_id smallint primary key auto_increment not null,
	first_kind_id char(2)  not null,
	first_kind_name varchar(60)  not null,
	second_kind_id char(2)  not null,
	second_kind_name varchar(60)  not null,
	register varchar(60)  not null,
	regist_time datetime  not null,
	derivation varchar(60)  not null,
	content varchar(500)  not null,
	key_a varchar(500)  not null,
	key_b varchar(500)  not null,
	key_c varchar(500)  not null,
	key_d varchar(500)  not null,
	key_e varchar(500)  not null,
	correct_key varchar(10)  not null,
	changer varchar(60)  not null,
	change_time datetime  not null)  







/* 创建新表 engage_resume。                                                                      */
/* engage_resume : 简历管理                                                                     */
/* 	res_id : 主键，自动增长列                                                                       */
/* 	human_name : 姓名                                                                         */
/* 	engage_type : 招聘类型                                                                      */
/* 	human_address : 地址                                                                      */
/* 	human_postcode : 邮编                                                                     */
/* 	human_major_kind_id : 职位分类编号                                                            */
/* 	human_major_kind_name : 职位分类名称                                                          */
/* 	human_major_id : 职位编号                                                                   */
/* 	human_major_name : 职位名称                                                                 */
/* 	human_telephone : 电话号码                                                                  */
/* 	human_homephone : 家庭电话                                                                  */
/* 	human_mobilephone : 手机                                                                  */
/* 	human_email : Email                                                                     */
/* 	human_hobby : 兴趣爱好                                                                      */
/* 	human_specility : 特长                                                                    */
/* 	human_sex : 性别                                                                          */
/* 	human_religion : 宗教信仰                                                                   */
/* 	human_party : 政治面貌                                                                      */
/* 	human_nationality : 国籍                                                                  */
/* 	human_race : 民族                                                                         */
/* 	human_birthday : 生日                                                                     */
/* 	human_age : 年龄                                                                          */
/* 	human_educated_degree : 教育程度                                                            */
/* 	human_educated_years : 教育年限                                                             */
/* 	human_educated_major : 专业                                                               */
/* 	human_college : 毕业院校                                                                    */
/* 	human_idcard : 身份证号                                                                     */
/* 	human_birthplace : 出生地                                                                  */
/* 	demand_salary_standard : 薪酬标准                                                           */
/* 	human_history_records : 个人履历                                                            */
/* 	remark : 备注                                                                             */
/* 	recomandation : 推荐意见                                                                    */
/* 	human_picture : 照片                                                                      */
/* 	attachment_name : 档案附件                                                                  */
/* 	check_status : 复核状态                                                                     */
/* 	register : 登记人                                                                          */
/* 	regist_time : 登记时间                                                                      */
/* 	checker : 复核人姓名                                                                         */
/* 	check_time : 复核时间                                                                       */
/* 	interview_status : 面试状态                                                                 */
/* 	total_points : 总分                                                                       */
/* 	test_amount : 考试次数                                                                      */
/* 	test_checker : 测试复核人                                                                    */
/* 	test_check_time : 测试复核时间                                                                */
/* 	pass_register : 通过登记人姓名                                                                 */
/* 	pass_regist_time : 通过登记时间                                                               */
/* 	pass_checker : 通过复核人姓名                                                                  */
/* 	pass_check_time : 通过复核时间                                                                */
/* 	pass_check_status : 通过的复核状态
	pass_checkComment:录用申请审核意见
	pass_passComment:录用申请审批意见                                                            */  
create table engage_resume ( 
	res_id smallint primary key auto_increment not null,
	human_name varchar(60)  not null,
	engage_type varchar(30)  not null,
	human_address varchar(200)  not null,
	human_postcode varchar(10)  not null,
	human_major_kind_id char(2)  not null,
	human_major_kind_name varchar(60)  not null,
	human_major_id char(2)  not null,
	human_major_name varchar(60)  not null,
	human_telephone varchar(60)  not null,
	human_homephone varchar(60)  not null,
	human_mobilephone varchar(60)  not null,
	human_email varchar(60)  not null,
	human_hobby varchar(200)  not null,
	human_specility varchar(200)  not null,
	human_sex char(2)  not null,
	human_religion varchar(60)  not null,
	human_party varchar(60)  not null,
	human_nationality varchar(60)  not null,
	human_race varchar(60)  not null,
	human_birthday datetime  not null,
	human_age smallint  not null,
	human_educated_degree varchar(60)  not null,
	human_educated_years smallint  not null,
	human_educated_major varchar(60)  not null,
	human_college varchar(60)  not null,
	human_idcard varchar(60)  not null,
	human_birthplace varchar(200)  not null,
	demand_salary_standard numeric(15,2)  not null,
	human_history_records varchar(500)  not null,
	remark varchar(500)  not null,
	recomandation varchar(500)  not null,
	human_picture varchar(60)  not null,
	attachment_name varchar(60)  not null,
	check_status smallint  not null,
	register varchar(60)  not null,
	regist_time datetime  not null,
	checker varchar(60)  not null,
	check_time datetime  not null,
	interview_status smallint  not null,
	total_points float  not null,
	test_amount smallint  not null,
	test_checker varchar(60)  not null,
	test_check_time datetime  not null,
	pass_register varchar(60)  not null,
	pass_regist_time datetime  not null,
	pass_checker varchar(60)  not null,
	pass_check_time datetime  not null,
	pass_check_status smallint  not null,
	pass_checkComment varchar(60)  not null,
	pass_passComment varchar(60)  not null
)  







/* 创建新表 engage_interview。                                                                   */
/* engage_interview : 面试表                                                                   */
/* 	ein_id : 主键，自动增长列                                                                       */
/* 	human_name : 姓名                                                                         */
/* 	interview_amount : 面试次数                                                                 */
/* 	human_major_kind_id : 职位分类编号                                                            */
/* 	human_major_kind_name : 职位分类名称                                                          */
/* 	human_major_id : 职位编号                                                                   */
/* 	human_major_name : 职位名称                                                                 */
/* 	image_degree : 形象等级                                                                     */
/* 	native_language_degree : 口才等级                                                           */
/* 	foreign_language_degree : 外语水平等级                                                        */
/* 	response_speed_degree : 应变能力                                                            */
/* 	EQ_degree : EQ等级                                                                        */
/* 	IQ_degree : IQ_等级                                                                       */
/* 	multi_quality_degree : 综合素质                                                             */
/* 	register : 面试人                                                                          */
/* 	checker : 筛选人                                                                           */
/* 	registe_time : 面试时间                                                                     */
/* 	check_time : 筛选时间                                                                       */
/* 	resume_id : 简历编号                                                                        */
/* 	result : 面试结果                                                                           */
/* 	interview_comment : 面试评价                                                                */
/* 	check_comment : 筛选评价                                                                    */
/* 	interview_status : 面试状态                                                                 */
/* 	check_status : 筛选状态                                                                     */  
create table engage_interview ( 
	ein_id smallint primary key auto_increment not null,
	human_name varchar(60)  not null,
	interview_amount smallint  not null,
	human_major_kind_id char(2)  not null,
	human_major_kind_name varchar(30)  not null,
	human_major_id char(2)  not null,
	human_major_name varchar(30)  not null,
	image_degree varchar(20)  not null,
	native_language_degree varchar(20)  not null,
	foreign_language_degree varchar(20)  not null,
	response_speed_degree varchar(20)  not null,
	EQ_degree varchar(20)  not null,
	IQ_degree varchar(20)  not null,
	multi_quality_degree varchar(20)  not null,
	register varchar(60)  not null,
	checker varchar(60)  not null,
	registe_time datetime  not null,
	check_time datetime  not null,
	resume_id smallint  not null,
	result varchar(20)  not null,
	interview_comment varchar(500)  not null,
	check_comment varchar(500)  not null,
	interview_status smallint  not null,
	check_status smallint null)  








/* 这是 Microsoft Visual Studio 生成的 SQL DDL 脚本的末尾。                                              */
