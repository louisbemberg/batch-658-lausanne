CREATE TABLE tasks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  description TEXT,
  done INTEGER DEFAULT (0)
);

DELETE FROM tasks;

INSERT INTO tasks (title, description)
VALUES ('Complete Livecode', 'Turn "done" to true when done!!');

INSERT INTO tasks (title, description)
VALUES ('bientôt le Weekend', 'Change the title of this task to Weekend!');

INSERT INTO tasks (title, description)
VALUES ('Delete me', 'Delete this task :)');
