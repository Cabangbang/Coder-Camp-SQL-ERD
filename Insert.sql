--delete previous data
DELETE FROM enroll;
DELETE FROM course;
DELETE FROM student;
DELETE FROM subject;
DELETE FROM teacher;

--insert data into Student
INSERT INTO student (student_id, first_name, last_name, student_dob, gender, skill) VALUES (1, 'Steven', 'Carlson', '20-JUN-2008', 'M', 'Java');
INSERT INTO student (student_id, first_name, last_name, student_dob, gender, skill) VALUES (2, 'Monika', 'Lowell', '13-OCT-2007', 'F', 'Python');
INSERT INTO student (student_id, first_name, last_name, student_dob, gender, skill) VALUES (3, 'Thomas', 'Smith', '05-FEB-2008', 'M', 'Java');
INSERT INTO student (student_id, first_name, last_name, student_dob, gender, skill) VALUES (4, 'Veronika', 'Vee', '30-APR-2008', 'F', 'C');
INSERT INTO student (student_id, first_name, last_name, student_dob, gender, skill) VALUES (5, 'Steven', 'Potts', '17-DEC-2007', 'M', 'Python');
INSERT INTO student (student_id, first_name, last_name, student_dob, gender, skill) VALUES (6, 'Trevor', 'Lee', NULL, 'M', 'C');

--insert data into Subject
INSERT INTO subject (subject_id, skill_requirement, max_capacity, achievement) VALUES ('S132', 'Python', 18, 'Python certificate');
INSERT INTO subject (subject_id, skill_requirement, max_capacity, achievement) VALUES ('S221', 'Java', 20, 'Java certificate');
INSERT INTO subject (subject_id, skill_requirement, max_capacity, achievement) VALUES ('S445', 'C', 10, 'C certificate');

--insert data into Teacher
INSERT INTO teacher (teacher_id, teacher_name, gender, subject) VALUES ('T1', 'Conor Kelly', 'M', 'Java');
INSERT INTO teacher (teacher_id, teacher_name, gender, subject) VALUES ('T2', 'Chloe Jones', 'F', 'Java');
INSERT INTO teacher (teacher_id, teacher_name, gender, subject) VALUES ('T3', 'Albert Monroe', 'M', 'Python');
INSERT INTO teacher (teacher_id, teacher_name, gender, subject) VALUES ('T4', 'Lisa Spade', 'F', 'C');

--insert data into Course
INSERT INTO course (course_id, teacher_name, teacher_id, subject_id) VALUES ('C192', 'Conor Kelly', 'T1', 'S221');
INSERT INTO course (course_id, teacher_name, teacher_id, subject_id) VALUES ('C023', 'Chloe Jones', 'T2', 'S221');
INSERT INTO course (course_id, teacher_name, teacher_id, subject_id) VALUES ('C200', 'Albert Monroe', 'T3', 'S132');
INSERT INTO course (course_id, teacher_name, teacher_id, subject_id) VALUES ('C223', 'Albert Monroe', 'T3', 'S132');
INSERT INTO course (course_id, teacher_name, teacher_id, subject_id) VALUES ('C543', 'Lisa Spade', 'T4', 'S445');
INSERT INTO course (course_id, teacher_name, teacher_id, subject_id) VALUES ('C555', 'Lisa Spade', 'T4', 'S445');

--insert data into Enrol
INSERT INTO enroll (course_id, student_id) VALUES ('C192',1);
INSERT INTO enroll (course_id, student_id) VALUES ('C192',2);
INSERT INTO enroll (course_id, student_id) VALUES ('C192',3);
INSERT INTO enroll (course_id, student_id) VALUES ('C023',1);
INSERT INTO enroll (course_id, student_id) VALUES ('C023',3);
INSERT INTO enroll (course_id, student_id) VALUES ('C023',4);
INSERT INTO enroll (course_id, student_id) VALUES ('C200',2);
INSERT INTO enroll (course_id, student_id) VALUES ('C200',6);
INSERT INTO enroll (course_id, student_id) VALUES ('C200',5);
INSERT INTO enroll (course_id, student_id) VALUES ('C543',5);
INSERT INTO enroll (course_id, student_id) VALUES ('C543',6);
INSERT INTO enroll (course_id, student_id) VALUES ('C543',1);
INSERT INTO enroll (course_id, student_id) VALUES ('C555',4);
INSERT INTO enroll (course_id, student_id) VALUES ('C555',6);
INSERT INTO enroll (course_id, student_id) VALUES ('C223',4);
INSERT INTO enroll (course_id, student_id) VALUES ('C223',6);


