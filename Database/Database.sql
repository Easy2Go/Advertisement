/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/7/5 13:46:54                            */
/*==============================================================*/


drop table if exists Banner_Menu;

drop table if exists Module_Menu;

drop table if exists Module_Sub_Menu;

drop table if exists Picture_Navigation;

drop table if exists UserInfo;

/*==============================================================*/
/* Table: Banner_Menu                                           */
/*==============================================================*/
create table Banner_Menu
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(10) not null comment '����',
   Link                 varchar(200) not null comment '����',
   IsActive             bool comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) comment '������',
   CreateDate           date default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Banner_Menu comment '���������˵�';

/*==============================================================*/
/* Table: Module_Menu                                           */
/*==============================================================*/
create table Module_Menu
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(20) not null comment '����',
   Link                 varchar(200) comment '����',
   IsActive             bool comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Module_Menu comment 'ģ�����˵�';

/*==============================================================*/
/* Table: Module_Sub_Menu                                       */
/*==============================================================*/
create table Module_Sub_Menu
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) not null comment '����',
   Link                 varchar(200) comment '����',
   IsActive             bool comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Module_Sub_Menu comment 'ģ���Ӳ˵�';

/*==============================================================*/
/* Table: Picture_Navigation                                    */
/*==============================================================*/
create table Picture_Navigation
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(10) not null comment '����',
   Link                 varchar(200) comment '����',
   Url                  varchar(200) not null comment 'ͼƬ����',
   IsActive             bool comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Picture_Navigation comment 'ͼƬ��ѯ����';

/*==============================================================*/
/* Table: UserInfo                                              */
/*==============================================================*/
create table UserInfo
(
   Id                   int not null auto_increment comment 'Id',
   UserName             varchar(30) not null comment '�û���',
   Password             varchar(100) not null comment '����',
   TrueName             varchar(30) not null comment '��ʵ����',
   Question             varchar(100) comment '�ܱ�����',
   Answer               varchar(100) comment '��',
   primary key (Id)
);

alter table UserInfo comment '�û���';

