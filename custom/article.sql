truncate table articles;
insert into articles(uid, title, header, body, description, create_time, update_time,
                     version, build, url, branch, commit, commit_time, repo_path, repo_id, status)
values ('0196622f-26b7-775d-b3e1-bf583f59d95c', 'First Article', 'Header of the first article', 'This is the content of the first article.',
 'Description of the first article', now(), now(), 1, 1, 'http://example.com/first-article', 
 'main', 'abc123', now(), '/path/to/repo1', '0196622f-e9b6-74ce-b024-b638b6893c22', 1),
         ('01966231-ca78-739e-aeae-1ebb783030d4', 'Second Article', 'Header of the second article', 'This is the content of the second article.',
    'Description of the second article', now(), now(), 1, 1, 'http://example.com/second-article',
    'main', 'def456', now(), '/path/to/repo2', '0196622f-e9b6-74ce-b024-b638b6893c22', 1),
         ('01966231-e3a9-77d9-a00c-484ea59b1930', 'Third Article', 'Header of the third article', 'This is the content of the third article.',
    'Description of the third article', now(), now(), 1, 1, 'http://example.com/third-article',
    'main', 'ghi789', now(), '/path/to/repo3', '0196622f-e9b6-74ce-b024-b638b6893c22', 0) ON CONFLICT (uid) DO NOTHING;