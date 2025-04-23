create table if not exists captcha
(
    uid         uuid not null
        constraint captcha_pk
            primary key,
    create_time timestamp with time zone,
    update_time timestamp with time zone,
    checked     integer,
    content     varchar(2048),
    used        smallint default 0
);

