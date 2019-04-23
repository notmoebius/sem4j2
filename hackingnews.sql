CREATE TABLE `users` (
  `user_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `user_name` TEXT
);

CREATE TABLE `news` (
  `news_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `url_news` TEXT
);

CREATE TABLE `comments` (
  `pin_id` INTEGER,
  `user_id` INTEGER,
  `comment` TEXT, 
  FOREIGN KEY (pin_id) REFERENCES pins(pin_id),
  FOREIGN KEY (user_id) REFERENCES category(user_id)
);
