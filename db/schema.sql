DROP DATABASE IF EXISTS tech_db;

CREATE DATABASE tech_db;
USE tech_db;

CREATE TABLE
users
(
  id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  userName VARCHAR(255) NOT NULL,
  userPass VARCHAR(255) NOT NULL
);

CREATE TABLE
  posts
  (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    postTitle VARCHAR(255) NOT NULL,
    postContent TEXT NOT NULL,
    postUser INTEGER NOT NULL,
    FOREIGN KEY (post_user) REFERENCES users(user_id)
  );

CREATE TABLE
  comments
  (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    commentContent TEXT NOT NULL,
    commentPost INTEGER NOT NULL,
    FOREIGN KEY (comment_post) REFERENCES posts(post_id)
  );