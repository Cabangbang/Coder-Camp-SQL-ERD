--Drop the tables
DROP TABLE ENROLL;
DROP TABLE COURSE;
DROP TABLE STUDENT;
DROP TABLE SUBJECT;
DROP TABLE TEACHER;

--Create Course table
CREATE TABLE course (
    course_id     VARCHAR2(10) NOT NULL,
    teacher_name  CHAR(20),
    teacher_id    VARCHAR2(10) NOT NULL,
    subject_id    VARCHAR2(10) NOT NULL
);

ALTER TABLE course ADD CONSTRAINT course_pk PRIMARY KEY ( course_id );

--Create Enrol table
CREATE TABLE enroll (
    course_id   VARCHAR2(10) NOT NULL,
    student_id  VARCHAR2(9) NOT NULL
);

--Create Studeny table
CREATE TABLE student (
    student_id   VARCHAR2(9) NOT NULL,
    first_name   CHAR(20 CHAR),
    last_name    CHAR(20),
    student_dob  DATE,
    gender       CHAR(1),
    skill        VARCHAR2(20)
);

ALTER TABLE student ADD CONSTRAINT student_pk PRIMARY KEY ( student_id );

--Create Subject table
CREATE TABLE subject (
    subject_id         VARCHAR2(10) NOT NULL,
    skill_requirement  VARCHAR2(20),
    max_capacity       INTEGER,
    achievement        CHAR(20)
);

ALTER TABLE subject ADD CONSTRAINT subject_pk PRIMARY KEY ( subject_id );

--Create Teacher table
CREATE TABLE teacher (
    teacher_id    VARCHAR2(10) NOT NULL,
    teacher_name  CHAR(30),
    gender        CHAR(1),
    subject       VARCHAR2(20)
);

ALTER TABLE teacher ADD CONSTRAINT teacher_pk PRIMARY KEY ( teacher_id );


--adding foreign keys to other entities
ALTER TABLE enroll
    ADD CONSTRAINT course_fk FOREIGN KEY ( course_id )
        REFERENCES course ( course_id );

ALTER TABLE course
    ADD CONSTRAINT course_subject_fk FOREIGN KEY ( subject_id )
        REFERENCES subject ( subject_id );

ALTER TABLE course
    ADD CONSTRAINT course_teacher_fk FOREIGN KEY ( teacher_id )
        REFERENCES teacher ( teacher_id );

ALTER TABLE enroll
    ADD CONSTRAINT student_fk FOREIGN KEY ( student_id )
        REFERENCES student ( student_id );