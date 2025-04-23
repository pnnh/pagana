create table if not exists accounts
(
    uid         uuid                                                   not null
        constraint accounts_pk
            primary key,
    create_time timestamp with time zone default now()                 not null,
    update_time timestamp with time zone default now()                 not null,
    username    varchar(128)                                           not null,
    password    varchar(1024)            default ''::character varying not null,
    photo       varchar(1024)            default ''::character varying not null,
    description varchar(1024)            default ''::character varying not null,
    email       varchar(128)             default ''::character varying not null,
    status      integer                  default 0                     not null,
    nickname    varchar(128)             default ''::character varying not null,
    credentials varchar(1024)            default ''::character varying not null,
    session     varchar(1024)            default ''::character varying not null,
    website     varchar(128),
    fingerprint varchar(1024)
);

comment on table accounts is '账户表';

comment on column accounts.uid is '主键列';

comment on column accounts.username is '用户名';

comment on column accounts.password is '密码';

comment on column accounts.email is '电子邮件';

comment on column accounts.status is '可用状态';

create unique index if not exists accounts_index_account
    on accounts (username);

