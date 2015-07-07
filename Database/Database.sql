/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/7/8 0:24:01                             */
/*==============================================================*/


drop table if exists Banner_Menu;

drop table if exists Category;

drop table if exists Contact;

drop table if exists Customer;

drop table if exists Customer_Category;

drop table if exists FriendLink;

drop table if exists News;

drop table if exists Picture_Navigation;

drop table if exists Project;

drop table if exists Project_Image;

drop table if exists Service;

drop table if exists Service_Category;

drop table if exists Sub_Category;

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
   Sort                 int not null comment '����',
   CreateBy             varchar(30) comment '������',
   CreateDate           date default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Banner_Menu comment '���������˵�';

/*==============================================================*/
/* Table: Category                                              */
/*==============================================================*/
create table Category
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
   Sort                 int not null comment '����',
   primary key (Id)
);

alter table Category comment '�������˵�';

/*==============================================================*/
/* Table: Contact                                               */
/*==============================================================*/
create table Contact
(
   Id                   int not null auto_increment comment 'Id',
   Phone                varchar(20) comment '��ϵ�绰',
   Phone2               varchar(20) comment '��ϵ�绰2',
   QQ                   varchar(20),
   Wechat               varchar(50) comment '΢��',
   Weibo                varchar(50) comment '΢��',
   Email                varchar(100) comment '����',
   Url                  varchar(200) comment '��ϵ��ʽͼƬ����',
   IsActive             bool default true comment '�Ƿ���Ч',
   IsDelete             bool default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Contact comment '��ϵ��ʽ';

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer
(
   Id                   int not null comment 'Id',
   CustomerCategoryId   int not null comment '�ͻ�����Id',
   Name                 varchar(50) not null comment '�ͻ�����',
   Sort                 int comment '����',
   Url                  varchar(200) comment '�ͻ���վ����',
   IsActive             bool not null default true comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Customer comment '�û���Ϣ';

/*==============================================================*/
/* Table: Customer_Category                                     */
/*==============================================================*/
create table Customer_Category
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) comment '����',
   ImageTopUrl          varchar(200) comment '����ͼƬ�ϲ���',
   ImageBottomUrl       varchar(200) comment '����ͼƬ�²���',
   IsActive             bool default true comment '�Ƿ���Ч',
   IsDelete             bool default false comment '�Ƿ�ɾ��',
   Sort                 int comment '����',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Customer_Category comment '�ͻ�����';

/*==============================================================*/
/* Table: FriendLink                                            */
/*==============================================================*/
create table FriendLink
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) not null comment '����',
   Url                  varchar(200) not null comment '����',
   IsActive             bool default true comment '�Ƿ���Ч',
   IsDelete             bool default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table FriendLink comment '��������';

/*==============================================================*/
/* Table: News                                                  */
/*==============================================================*/
create table News
(
   Id                   int not null auto_increment comment 'Id',
   Title                varchar(100) not null comment '���ű���',
   Source               varchar(30) comment '������Դ',
   Content              varchar(5000) comment '��������',
   Sort                 int comment '����',
   IsActive             bool not null default true comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table News comment '���Ŷ�̬';

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
   Sort                 int not null comment '����',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Picture_Navigation comment 'ͼƬ��ѯ����';

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project
(
   Id                   int not null comment 'Id',
   Company              varchar(50) not null comment '��˾����',
   Description          varchar(100) not null comment '��˾����',
   Url                  varchar(200) not null comment '��������',
   ImageUrl             varchar(200) not null comment '��ҳͼƬ����',
   Title                varchar(200) not null comment '���ı���',
   Content              varchar(5000) not null comment '��������',
   Sort                 int comment '����',
   SubCategoryId        int not null comment '�����Ӳ˵�Id',
   HomeSort             int comment '��ҳ����',
   IsActive             bool default true comment '�Ƿ���Ч',
   IsDelete             bool default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Project comment '����';

/*==============================================================*/
/* Table: Project_Image                                         */
/*==============================================================*/
create table Project_Image
(
   Id                   int not null comment 'Id',
   Name                 varchar(30) comment '����',
   Url                  varchar(200) not null comment 'ͼƬ����',
   IsActive             bool not null default true comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   Sort                 int comment '����',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   ParentId             int not null comment '��ĿId',
   primary key (Id)
);

alter table Project_Image comment '����ͼƬ';

/*==============================================================*/
/* Table: Service                                               */
/*==============================================================*/
create table Service
(
   Id                   int not null comment 'Id',
   ServiceCategoryId    int not null comment '�������Id',
   Name                 varchar(50) comment '��������',
   Url                  varchar(200) comment '����',
   Sort                 int comment '����',
   IsActive             bool default true comment '�Ƿ���Ч',
   IsDelete             bool default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Service comment '���ķ���';

/*==============================================================*/
/* Table: Service_Category                                      */
/*==============================================================*/
create table Service_Category
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) not null comment '�����������',
   Url                  varchar(200) comment '����',
   Sort                 int comment '����',
   IsActive             bool default true comment '�Ƿ���Ч',
   IsDelete             bool default false comment '�Ƿ�ɾ��',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Service_Category comment '���ķ������';

/*==============================================================*/
/* Table: Sub_Category                                          */
/*==============================================================*/
create table Sub_Category
(
   Id                   int not null comment 'Id',
   ParentId             int not null comment '���˵�Id',
   Name                 varchar(50) not null comment '����',
   Link                 varchar(200) comment '����',
   IsActive             bool comment '�Ƿ���Ч',
   IsDelete             bool not null default false comment '�Ƿ�ɾ��',
   Sort                 int not null comment '����',
   CreateBy             varchar(30) not null comment '������',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '����ʱ��',
   UpdateBy             varchar(30) comment '�޸���',
   UpdateDate           date comment '�޸�ʱ��',
   primary key (Id)
);

alter table Sub_Category comment 'ģ���Ӳ˵�';

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

alter table Customer add constraint FK_CustomerCategoryId foreign key (CustomerCategoryId)
      references Customer_Category (Id) on delete restrict on update restrict;

alter table Project add constraint FK_SubCategoryId foreign key (SubCategoryId)
      references Sub_Category (Id) on delete restrict on update restrict;

alter table Project_Image add constraint FK_ProjectId foreign key (ParentId)
      references Project (Id) on delete restrict on update restrict;

alter table Service add constraint FK_ServiceCategoryId foreign key (ServiceCategoryId)
      references Service_Category (Id) on delete restrict on update restrict;

alter table Sub_Category add constraint FK_CategoryId foreign key (ParentId)
      references Category (Id) on delete restrict on update restrict;

