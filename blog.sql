CREATE TABLE `users` (
  `user_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_name` TEXT
);

CREATE TABLE `articles` (
  `article_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `content` TEXT,
  `user_id` INTEGER,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE `art_cat` (
  `article_id` INTEGER,
  `category_id` INTEGER,
  FOREIGN KEY (article_id) REFERENCES articles(article_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE `category` (
  `category_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `title` TEXT,
  `tag_id` INTEGER,
  FOREIGN KEY (tag_id) REFERENCES tag(tag_id)
);

CREATE TABLE `tag` (
  `tag_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `title` TEXT,
  `color` TEXT
);

INSERT INTO users (user_name) VALUES ('brice');
INSERT INTO articles (content,user_id) VALUES ('Ceci est un article',1);
INSERT INTO tag (title,color) VALUES ('ruby','blue');
INSERT INTO category (title,tag_id) VALUES ('development',1);
INSERT INTO art_cat (article_id,category_id) VALUES (1,1);

