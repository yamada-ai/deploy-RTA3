DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS articles;


CREATE TABLE articles(
  id serial PRIMARY KEY, -- 投稿ID
  name text NOT NULL,    -- 名前
  content text NOT NULL  -- 記事内容
);


CREATE TABLE comments (
  id SERIAL PRIMARY KEY,          -- コメントID
  name TEXT NOT NULL,             -- 名前
  content TEXT NOT NULL,          -- コメント内容
  article_id INTEGER,             -- 投稿ID
  CONSTRAINT fk_article FOREIGN KEY(article_id) REFERENCES articles(id) ON DELETE CASCADE
);

INSERT INTO articles(name, content) VALUES('伊賀', 'この掲示板について');
INSERT INTO articles(name, content) VALUES('山田', '新たな投稿です。');
INSERT INTO comments(name, content, article_id) VALUES('佐藤1', '伊賀さん書き込みのコメント1',1);
INSERT INTO comments(name, content, article_id) VALUES('佐藤2', '伊賀さん書き込みのコメント2',1);
INSERT INTO comments(name, content, article_id) VALUES('佐藤3', '伊賀さん書き込みのコメント3',1);
INSERT INTO comments(name, content, article_id) VALUES('吉田1', '山田さん書き込みのコメント1',2);
INSERT INTO comments(name, content, article_id) VALUES('吉田2', '山田さん書き込みのコメント2',2);
