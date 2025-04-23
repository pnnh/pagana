create table if not exists translation
(
    uid         uuid not null
        constraint translation_pk
            primary key,
    name        varchar(256),
    content     varchar(4096),
    lang        varchar(8),
    create_time timestamp with time zone,
    update_time timestamp with time zone
);

