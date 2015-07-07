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
   Name                 varchar(10) not null comment '名字',
   Link                 varchar(200) not null comment '链接',
   IsActive             bool comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   Sort                 int not null comment '排序',
   CreateBy             varchar(30) comment '创建人',
   CreateDate           date default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Banner_Menu comment '导航条主菜单';

/*==============================================================*/
/* Table: Category                                              */
/*==============================================================*/
create table Category
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(20) not null comment '名字',
   Link                 varchar(200) comment '链接',
   IsActive             bool comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   Sort                 int not null comment '排序',
   primary key (Id)
);

alter table Category comment '分类主菜单';

/*==============================================================*/
/* Table: Contact                                               */
/*==============================================================*/
create table Contact
(
   Id                   int not null auto_increment comment 'Id',
   Phone                varchar(20) comment '联系电话',
   Phone2               varchar(20) comment '联系电话2',
   QQ                   varchar(20),
   Wechat               varchar(50) comment '微信',
   Weibo                varchar(50) comment '微博',
   Email                varchar(100) comment '邮箱',
   Url                  varchar(200) comment '联系方式图片链接',
   IsActive             bool default true comment '是否生效',
   IsDelete             bool default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Contact comment '联系方式';

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer
(
   Id                   int not null comment 'Id',
   CustomerCategoryId   int not null comment '客户分类Id',
   Name                 varchar(50) not null comment '客户名称',
   Sort                 int comment '排序',
   Url                  varchar(200) comment '客户网站链接',
   IsActive             bool not null default true comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Customer comment '用户信息';

/*==============================================================*/
/* Table: Customer_Category                                     */
/*==============================================================*/
create table Customer_Category
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) comment '名称',
   ImageTopUrl          varchar(200) comment '名称图片上部分',
   ImageBottomUrl       varchar(200) comment '名称图片下部分',
   IsActive             bool default true comment '是否生效',
   IsDelete             bool default false comment '是否删除',
   Sort                 int comment '排序',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Customer_Category comment '客户分类';

/*==============================================================*/
/* Table: FriendLink                                            */
/*==============================================================*/
create table FriendLink
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) not null comment '名称',
   Url                  varchar(200) not null comment '链接',
   IsActive             bool default true comment '是否生效',
   IsDelete             bool default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table FriendLink comment '友情链接';

/*==============================================================*/
/* Table: News                                                  */
/*==============================================================*/
create table News
(
   Id                   int not null auto_increment comment 'Id',
   Title                varchar(100) not null comment '新闻标题',
   Source               varchar(30) comment '新闻来源',
   Content              varchar(5000) comment '新闻正文',
   Sort                 int comment '排序',
   IsActive             bool not null default true comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table News comment '新闻动态';

/*==============================================================*/
/* Table: Picture_Navigation                                    */
/*==============================================================*/
create table Picture_Navigation
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(10) not null comment '名字',
   Link                 varchar(200) comment '链接',
   Url                  varchar(200) not null comment '图片链接',
   IsActive             bool comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   Sort                 int not null comment '排序',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Picture_Navigation comment '图片轮询导航';

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project
(
   Id                   int not null comment 'Id',
   Company              varchar(50) not null comment '公司名称',
   Description          varchar(100) not null comment '公司描述',
   Url                  varchar(200) not null comment '正文链接',
   ImageUrl             varchar(200) not null comment '首页图片链接',
   Title                varchar(200) not null comment '正文标题',
   Content              varchar(5000) not null comment '正文内容',
   Sort                 int comment '排序',
   SubCategoryId        int not null comment '分类子菜单Id',
   HomeSort             int comment '首页排序',
   IsActive             bool default true comment '是否生效',
   IsDelete             bool default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Project comment '案例';

/*==============================================================*/
/* Table: Project_Image                                         */
/*==============================================================*/
create table Project_Image
(
   Id                   int not null comment 'Id',
   Name                 varchar(30) comment '名称',
   Url                  varchar(200) not null comment '图片链接',
   IsActive             bool not null default true comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   Sort                 int comment '排序',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   ParentId             int not null comment '项目Id',
   primary key (Id)
);

alter table Project_Image comment '案例图片';

/*==============================================================*/
/* Table: Service                                               */
/*==============================================================*/
create table Service
(
   Id                   int not null comment 'Id',
   ServiceCategoryId    int not null comment '服务分类Id',
   Name                 varchar(50) comment '服务名称',
   Url                  varchar(200) comment '链接',
   Sort                 int comment '排序',
   IsActive             bool default true comment '是否生效',
   IsDelete             bool default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Service comment '核心服务';

/*==============================================================*/
/* Table: Service_Category                                      */
/*==============================================================*/
create table Service_Category
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) not null comment '服务分类名称',
   Url                  varchar(200) comment '链接',
   Sort                 int comment '排序',
   IsActive             bool default true comment '是否生效',
   IsDelete             bool default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Service_Category comment '核心服务分类';

/*==============================================================*/
/* Table: Sub_Category                                          */
/*==============================================================*/
create table Sub_Category
(
   Id                   int not null comment 'Id',
   ParentId             int not null comment '父菜单Id',
   Name                 varchar(50) not null comment '名字',
   Link                 varchar(200) comment '链接',
   IsActive             bool comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   Sort                 int not null comment '排序',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Sub_Category comment '模块子菜单';

/*==============================================================*/
/* Table: UserInfo                                              */
/*==============================================================*/
create table UserInfo
(
   Id                   int not null auto_increment comment 'Id',
   UserName             varchar(30) not null comment '用户名',
   Password             varchar(100) not null comment '密码',
   TrueName             varchar(30) not null comment '真实姓名',
   Question             varchar(100) comment '密保问题',
   Answer               varchar(100) comment '答案',
   primary key (Id)
);

alter table UserInfo comment '用户表';

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

