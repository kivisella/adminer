DROP TABLE IF EXISTS jokes;
DROP TABLE IF EXISTS categories;

CREATE TABLE categories(
   category_id  SERIAL PRIMARY KEY,
   category_name  TEXT      NOT NULL
);

CREATE TABLE jokes(
    joke_id SERIAL PRIMARY KEY,
    category_id INT NOT NULL,
    joke_text TEXT NOT NULL,
    joke_rank INT NULL,
    FOREIGN KEY (category_id) REFERENCES categories (category_id)
);

INSERT INTO categories (category_name)
    VALUES ('generic');

INSERT INTO categories (category_name)
    VALUES ('dad');

INSERT INTO jokes (category_id, joke_text, joke_rank)
    VALUES (1, 'Which sound does a duck make while sitting on a router? - NAT NAT NAT!', 1);

INSERT INTO jokes (category_id, joke_text, joke_rank)
    VALUES (1, 'What do you get when you wake up on a workday and realize you ran out of coffee? - A depresso.', 4);

INSERT INTO jokes (category_id, joke_text, joke_rank)
    VALUES (1, 'I used to breed rabbits. Then I realized they can handle it themselves.', 3);

INSERT INTO jokes (category_id, joke_text, joke_rank)
    VALUES (2, 'Child: I am hungry - Dad: Hi Hungry, I am dad.', 3);
