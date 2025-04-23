create table if not exists access_code
(
    uid         uuid not null
        constraint access_code_pk
            primary key,
    create_time timestamp with time zone,
    update_time timestamp with time zone,
    code        varchar(128),
    content     varchar(4096),
    active      integer
);

