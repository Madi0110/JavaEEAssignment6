CREATE TABLE IF NOT EXISTS 'news' (
                        'news_id' INTEGER NOT NULL PRIMARY KEY,
                        'news_title' TEXT NOT NULL,
                        'news_body' TEXT NOT NULL,
                        'news_author' INTEGER,
                        FOREIGN KEY (news_author)
                            REFERENCES 'users' (user_id)
                            ON UPDATE CASCADE
                            ON DELETE SET NULL
