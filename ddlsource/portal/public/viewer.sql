create table if not exists viewer
(
    uid         uuid not null
        constraint viewer_pk
            primary key,
    source      uuid,
    target      uuid,
    create_time timestamp with time zone,
    update_time timestamp with time zone,
    title       varchar(256),
    address     varchar(128),
    class       varchar(64)
);

