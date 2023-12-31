DROP TABLE IF EXISTS students, enrollments, classes, addresses;

CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer
);

CREATE TABLE addresses (
  id        serial PRIMARY KEY,
  line_1    varchar(255) NOT NULL,
  city      varchar(255) NOT NULL,
  state     varchar(255) NOT NULL,
  zipcode   integer
);

CREATE TABLE classes (
  id        serial PRIMARY KEY,
  name      varchar(255) NOT NULL,
  credits   integer
);

CREATE TABLE enrollments (
  id          serial PRIMARY KEY,
  student_id  int NOT NULL,
  class_id    int NOT NULL,
  grade       char(1)
);