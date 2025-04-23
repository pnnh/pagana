create table if not exists comments
(
    uid         uuid      default gen_random_uuid() not null
        constraint comments_pk
            primary key,
    content     varchar(4906)                       not null,
    create_time timestamp default now(),
    update_time timestamp default now(),
    creator     uuid,
    thread      uuid,
    referer     uuid,
    resource    uuid,
    ipaddress   varchar(128),
    status      integer   default 0,
    fingerprint varchar(1024),
    email       varchar(128),
    nickname    varchar(128),
    website     varchar(128),
    discover    integer   default 0                 not null
);

comment on column comments.thread is '主评论ID';

comment on column comments.referer is '引用ID';

comment on column comments.resource is '资源';

comment on column comments.status is '审核状态';

