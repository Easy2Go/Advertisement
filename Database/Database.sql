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
   Name                 varchar(10) not null comment '名字',
   Link                 varchar(200) not null comment '链接',
   IsActive             bool comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   CreateBy             varchar(30) comment '创建人',
   CreateDate           date default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Banner_Menu comment '导航条主菜单';

/*==============================================================*/
/* Table: Module_Menu                                           */
/*==============================================================*/
create table Module_Menu
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
   primary key (Id)
);

alter table Module_Menu comment '模块主菜单';

/*==============================================================*/
/* Table: Module_Sub_Menu                                       */
/*==============================================================*/
create table Module_Sub_Menu
(
   Id                   int not null auto_increment comment 'Id',
   Name                 varchar(50) not null comment '名字',
   Link                 varchar(200) comment '链接',
   IsActive             bool comment '是否生效',
   IsDelete             bool not null default false comment '是否删除',
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Module_Sub_Menu comment '模块子菜单';

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
   CreateBy             varchar(30) not null comment '创建人',
   CreateDate           date not null default CURRENT_TIMESTAMP comment '创建时间',
   UpdateBy             varchar(30) comment '修改人',
   UpdateDate           date comment '修改时间',
   primary key (Id)
);

alter table Picture_Navigation comment '图片轮询导航';

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

