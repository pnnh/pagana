create table if not exists images
(
    uid         uuid                     default gen_random_uuid() not null
        constraint "PK_images"
            primary key,
    title       varchar(256)                                       not null,
    create_time timestamp with time zone default now()             not null,
    update_time timestamp with time zone default now()             not null,
    keywords    varchar(256)             default ''::text          not null,
    description varchar(512)             default ''::text          not null,
    status      integer                  default 0                 not null,
    owner       uuid,
    channel     uuid,
    discover    integer                  default 0                 not null,
    file_path   varchar(1024),
    ext_name    varchar(64)
);

