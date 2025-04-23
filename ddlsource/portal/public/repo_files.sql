create table if not exists repo_files
(
    uid         varchar(64) not null
        constraint repo_files_pk
            primary key,
    branch      varchar(64),
    commit_id   varchar(64),
    src_path    varchar(1024),
    target_path varchar(1024),
    mime        varchar(64),
    create_time timestamp with time zone,
    update_time timestamp with time zone
);

