create table if not exists repo_sync
(
    uid            uuid not null
        constraint repo_sync_pk
            primary key,
    last_commit_id varchar(64),
    branch         varchar(64),
    repo_id        varchar(64)
);

