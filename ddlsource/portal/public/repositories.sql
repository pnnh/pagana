create table if not exists repositories
(
    uid        uuid not null
        constraint repositories_pk
            primary key,
    remote_url varchar(1024),
    file_path  varchar(1024)
);

