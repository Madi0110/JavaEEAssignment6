CREATE TABLE IF NOT EXISTS 'users' (
                        'user_id' INTEGER NOT NULL PRIMARY KEY,
                        'user_login' TEXT NOT NULL,
                        'user_password' TEXT NOT NULL,
                        'user_fname' TEXT,
                        'user_lname' TEXT
                    );
