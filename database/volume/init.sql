USE math;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  name VARCHAR(30) NOT NULL,
  pass VARCHAR(60) NOT NULL,
  email VARCHAR(255) NOT NULL,
  last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  sender INT NOT NULL,
  receiver INT NOT NULL,
  msg VARCHAR(3000) NOT NULL,
  FOREIGN KEY (sender) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (receiver) REFERENCES users(id) ON DELETE CASCADE
);

/*
table exercises:
  the body JSON column:
  text is the text of the exercise, the "$$0$$" gets replaces with an image or latex from 0: ["url2image", "latex"].
  
*/
CREATE TABLE exercises (
  id INT AUTO_INCREMENT PRIMARY KEY,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  author INT NOT NULL,
  likes JSON, -- ["int_id", "int_id", ....]
  body JSON, -- {text: "... $$0$$ ... $$1$$ ...", 0: ["url2image", "latex"], 1: ...}
  FOREIGN KEY (author) REFERENCES users(id) ON DELETE CASCADE
);

