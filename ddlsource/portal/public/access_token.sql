create table if not exists access_token
(
    uid         uuid not null
        constraint access_token_pk
            primary key,
    create_time timestamp with time zone,
    update_time timestamp with time zone,
    signature   varchar(128),
    content     varchar(4096)
);

