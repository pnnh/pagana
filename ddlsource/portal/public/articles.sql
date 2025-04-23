create table if not exists articles
(
    uid         uuid                     default gen_random_uuid() not null
        constraint "PK_articles"
            primary key,
    title       varchar(128)                                       not null,
    header      varchar(64)                                        not null,
    body        text                                               not null,
    create_time timestamp with time zone default now()             not null,
    update_time timestamp with time zone default now()             not null,
    keywords    varchar(128)             default ''::text          not null,
    description varchar(512)             default ''::text          not null,
    status      integer                  default 0                 not null,
    cover       varchar(256)             default ''::text          not null,
    owner       uuid,
    channel     uuid,
    discover    integer                  default 0                 not null,
    partition   uuid,
    version     varchar(64),
    build       varchar(64),
    url         varchar(256),
    branch      varchar(64),
    commit      varchar(64),
    commit_time timestamp with time zone,
    repo_path   varchar(1024),
    repo_id     uuid
);

