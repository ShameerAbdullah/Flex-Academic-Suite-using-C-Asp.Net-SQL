-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Semester INT,
    Prerequisites INT DEFAULT 0,
	CreditHours INT
);

-- Semester 1
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (101, 'Introduction to Programming', 1, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (102, 'Mathematics for Computer Science', 1, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (103, 'Digital Logic Design', 1, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (104, 'Computer Organization and Architecture', 1, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (105, 'Discrete Mathematics', 1, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (106, 'Data Structures and Algorithms', 1, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (107, 'Database Systems', 1, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (108, 'Computer Networks', 1, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (109, 'Operating Systems', 1, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (110, 'Software Engineering', 1, 3);

-- Semester 2
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (201, 'Object-Oriented Programming', 2, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (202, 'Data Communication and Networking', 2, 108, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (203, 'Web Programming', 2, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (204, 'Algorithms and Complexity', 2, 106, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (205, 'Operating Systems II', 2, 109, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (206, 'Database Management Systems', 2, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (207, 'Computer Graphics', 2, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (208, 'Software Testing', 2, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (209, 'Artificial Intelligence', 2, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (210, 'Machine Learning', 2, 102, 4);

-- Semester 3
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (301, 'Advanced Programming', 3, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (302, 'Computer Architecture', 3, 4);

-- Semester 3 (continued)
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (303, 'Information Security', 3, 3);

-- Semester 3 (continued)
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (304, 'Database Design and Management', 3, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (305, 'Software Development Lifecycle', 3, 210, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (306, 'Mobile App Development', 3, 206, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (307, 'Web Application Security', 3, 203, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (308, 'Data Mining', 3, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (309, 'Computer Vision', 3, 207, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (310, 'Natural Language Processing', 3, 210, 4);

-- Semester 4
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (401, 'Software Architecture', 4, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (402, 'Distributed Systems', 4, 205, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (406, 'Computer Vision and Image Processing', 4, 309, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (407, 'Information Retrieval', 4, 307, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (408, 'Natural Language Understanding', 4, 310, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (409, 'Software Project Management', 4, 110, 4);

-- Semester 5
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (501, 'Software Quality Assurance', 5, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (502, 'Data Warehousing', 5, 304, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (504, 'Network Security', 5, 303, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (505, 'Wireless and Mobile Networks', 5, 202, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (506, 'Advanced Database Systems', 5, 206, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (508, 'Software Defined Networking', 5, 208, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (510, 'Advanced Algorithms', 5, 206, 4);

-- Semester 6
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (601, 'Software Maintenance and Evolution', 6, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (604, 'Data Science', 6, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (605, 'Cybersecurity', 6, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (606, 'Cloud Security', 6, 403, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (607, 'Software Metrics and Measurement', 6, 502, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (608, 'Information Systems Analysis and Design', 6, 501, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (609, 'Computer Forensics', 6, 505, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (610, 'Natural Language Generation', 6, 505, 3);

-- Semester 7
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (701, 'Software Deployment and Configuration', 7, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (703, 'Advanced Topics in Artificial Intelligence', 7, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (704, 'Software Testing and Quality Assurance', 7, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (705, 'Mobile and Ubiquitous Computing', 7, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (706, 'Natural Language Processing', 7, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (709, 'Intelligent Systems', 7, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (710, 'Advanced Web Technologies', 7, 203, 4);

-- Semester 8
INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (801, 'Software Development Project', 8, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (802, 'Cloud Native Application Development', 8, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (803, 'Machine Learning and Deep Learning', 8, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (804, 'Cybersecurity Management', 8, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (805, 'Natural Language Understanding', 8, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (806, 'Data Science and Analytics', 8, 604, 4);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (807, 'Information Retrieval and Web Search', 8, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, CreditHours)
VALUES (808, 'Software Engineering Practices', 8, 3);

INSERT INTO Courses (CourseID, CourseName, Semester, Prerequisites, CreditHours)
VALUES (809, 'Artificial Neural Networks', 8, 706, 4);



CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Section VARCHAR(10),
    Semester INT
);

INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (1, 'John Smith', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (2, 'Emily Johnson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (3, 'Michael Williams', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (4, 'Emma Jones', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (5, 'Daniel Brown', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (6, 'Olivia Davis', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (7, 'Matthew Wilson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (8, 'Sophia Miller', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (9, 'David Taylor', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (10, 'Isabella Anderson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (11, 'Andrew Thomas', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (12, 'Mia Martinez', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (13, 'Joseph Robinson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (14, 'Ava Clark', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (15, 'William Rodriguez', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (16, 'Charlotte Hernandez', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (17, 'Ethan Lee', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (18, 'Amelia Lewis', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (19, 'James Turner', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (20, 'Sofia Walker', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (21, 'Benjamin Hall', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (22, 'Avery Green', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (23, 'Harper Adams', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (24, 'Daniel Baker', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (25, 'Mila Turner', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (26, 'Liam Walker', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (27, 'Harper Moore', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (28, 'Noah Hill', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (29, 'Sophia King', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (30, 'Lucas Wood', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (31, 'Evelyn Powell', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (32, 'Logan Hughes', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (33, 'Aria Scott', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (34, 'Henry Bennett', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (35, 'Amelia Foster', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (36, 'Sebastian Kelly', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (37, 'Avery Simmons', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (38, 'Abigail Watson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (39, 'Jackson Brooks', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (40, 'Charlotte Reed', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (41, 'Ryan Coleman', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (42, 'Madison Morris', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (43, 'Jacob Ross', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (44, 'Grace Phillips', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (45, 'Samuel Perry', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (46, 'Ella Simmons', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (47, 'Aiden Henderson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (48, 'Lily Price', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (49, 'Owen Reed', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (50, 'Chloe Peterson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (51, 'William Turner', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (52, 'Evelyn Richardson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (53, 'James Bennett', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (54, 'Ava Foster', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (55, 'Benjamin Clark', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (56, 'Mia Lewis', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (57, 'Lucas Wright', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (58, 'Harper Adams', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (59, 'Henry Miller', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (60, 'Sophia Baker', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (61, 'Daniel Campbell', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (62, 'Olivia Turner', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (63, 'Jackson Phillips', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (64, 'Avery Morris', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (65, 'Emily Reed', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (66, 'Carter Ross', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (67, 'Scarlett Perry', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (68, 'Sebastian Simmons', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (69, 'Aria Henderson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (70, 'Matthew Price', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (71, 'Sofia Peterson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (72, 'Liam Turner', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (73, 'Ella Richardson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (74, 'Daniel Bennett', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (75, 'Ava Foster', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (76, 'Noah Clark', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (77, 'Olivia Lewis', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (78, 'William Wright', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (79, 'Sophia Adams', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (80, 'Liam Miller', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (81, 'Charlotte Baker', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (82, 'James Campbell', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (83, 'Emma Turner', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (84, 'Daniel Phillips', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (85, 'Ava Morris', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (86, 'Ethan Reed', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (87, 'Emily Ross', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (88, 'Jackson Perry', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (89, 'Olivia Simmons', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (90, 'Lucas Henderson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (91, 'Scarlett Price', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (92, 'Carter Peterson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (93, 'Mila Turner', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (94, 'Henry Richardson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (95, 'Aria Bennett', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (96, 'Mason Foster', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (97, 'Avery Clark', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (98, 'Emily Lewis', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (99, 'Jacob Wright', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (100, 'Mia Adams', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (101, 'Logan Campbell', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (102, 'Aria Turner', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (103, 'Elijah Phillips', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (104, 'Ava Morris', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (105, 'Liam Reed', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (106, 'Sophia Ross', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (107, 'Jackson Perry', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (108, 'Olivia Simmons', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (109, 'William Henderson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (110, 'Charlotte Price', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (111, 'Ethan Peterson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (112, 'Emily Lewis', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (113, 'Mason Wright', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (114, 'Avery Adams', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (115, 'Elijah Turner', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (116, 'Olivia Phillips', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (117, 'Mia Morris', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (118, 'Noah Reed', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (119, 'Sophia Ross', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (120, 'Jackson Perry', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (121, 'Olivia Simmons', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (122, 'William Henderson', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (123, 'Charlotte Price', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (124, 'Ethan Peterson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (125, 'Emily Lewis', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (126, 'John Doe', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (127, 'Jane Smith', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (128, 'David Johnson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (129, 'Emily Williams', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (130, 'Michael Brown', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (131, 'Olivia Jones', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (132, 'William Davis', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (133, 'Sophia Miller', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (134, 'Benjamin Wilson', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (135, 'Ava Taylor', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (136, 'James Anderson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (137, 'Mia Martinez', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (138, 'Alexander Thompson', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (139, 'Abigail Hernandez', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (140, 'Daniel Clark', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (141, 'Sofia Lewis', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (142, 'Matthew Walker', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (143, 'Charlotte Hall', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (144, 'Joseph Young', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (145, 'Harper Hill', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (146, 'Andrew Wright', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (147, 'Evelyn Scott', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (148, 'Gabriel Green', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (149, 'Victoria Adams', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (150, 'Christopher King', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (151, 'Ella Turner', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (152, 'Andrew Wright', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (153, 'Grace Morgan', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (154, 'Jacob Bennett', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (155, 'Scarlett Kelly', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (156, 'Logan Brooks', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (157, 'Chloe Mitchell', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (158, 'Carter Gray', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (159, 'Lily Turner', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (160, 'Owen Carter', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (161, 'Layla Adams', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (162, 'Wyatt Foster', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (163, 'Nora Hall', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (164, 'Henry Russell', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (165, 'Zoe Griffin', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (166, 'Sebastian Perry', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (167, 'Mila Powell', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (168, 'Jack Reed', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (169, 'Avery Watson', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (170, 'Levi Patterson', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (171, 'Hannah Cooper', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (172, 'Samuel Rivera', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (173, 'Grace Murphy', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (174, 'Isaac Morgan', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (175, 'Aria Ward', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (176, 'Daniel Cooper', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (177, 'Mila Powell', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (178, 'Jackson Adams', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (179, 'Scarlett Watson', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (180, 'Elijah Turner', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (181, 'Avery Morgan', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (182, 'Caleb Bennett', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (183, 'Aria Ward', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (184, 'Benjamin Thompson', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (185, 'Layla Mitchell', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (186, 'William Wilson', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (187, 'Olivia Adams', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (188, 'Henry Green', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (189, 'Amelia Griffin', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (190, 'Samuel Perry', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (191, 'Sophia Turner', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (192, 'Michael Powell', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (193, 'Ava Foster', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (194, 'Daniel Ward', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (195, 'Grace Hernandez', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (196, 'Elijah Lewis', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (197, 'Elizabeth Murphy', NULL, 8);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (198, 'Logan Russell', NULL, 1);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (199, 'Nora Hall', NULL, 2);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (200, 'Caleb Bennett', NULL, 3);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (201, 'Zoe Griffin', NULL, 4);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (202, 'Matthew Walker', NULL, 5);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (203, 'Charlotte Hall', NULL, 6);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (204, 'Joseph Young', NULL, 7);
INSERT INTO Students (StudentID, StudentName, Section, Semester) VALUES (205, 'Harper Hill', NULL, 8);


CREATE TABLE Teacher (
  TeacherID INT PRIMARY KEY,
  TeacherName VARCHAR(50),
  CourseAllocated VARCHAR(50) DEFAULT NULL,
  SectionAllocated VARCHAR(50) DEFAULT NULL
);


-- Inserting sample data into the Teachers table
INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1001, 'John Smith', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1002, 'Jane Doe', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1003, 'Robert Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1004, 'Emily Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1005, 'Michael Brown', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1006, 'Jessica Anderson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1007, 'William Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1008, 'Sophia Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1009, 'James Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1010, 'Olivia Thomas', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1011, 'David Miller', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1012, 'Emma Anderson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1013, 'John Brown', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1014, 'Isabella Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1015, 'Jacob Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1016, 'Ava Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1017, 'Matthew Smith', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1018, 'Samantha Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1019, 'Ethan Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1020, 'Olivia Anderson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1021, 'Christopher Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1022, 'Abigail Miller', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1023, 'Andrew Davis', NULL, NULL);

-- Inserting sample data into the Teachers table (continued)
INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1024, 'Emily Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1025, 'Daniel Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1026, 'Elizabeth Smith', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1027, 'Joseph Anderson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1028, 'Mia Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1029, 'Alexander Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1030, 'Grace Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1031, 'Ryan Anderson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1032, 'Chloe Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1033, 'Samuel Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1034, 'Avery Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1035, 'Benjamin Smith', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1036, 'Lily Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1037, 'Jackson Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1038, 'Ella Anderson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1039, 'Henry Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1040, 'Victoria Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1041, 'Sebastian Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1042, 'Aria Smith', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1043, 'Jack Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1044, 'Scarlett Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1045, 'Aiden Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1046, 'Avery Smith', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1047, 'Lucas Davis', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1048, 'Grace Johnson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1049, 'Gabriel Wilson', NULL, NULL);

INSERT INTO Teacher (TeacherID, TeacherName, CourseAllocated, SectionAllocated)
VALUES (1050, 'Zoe Smith', NULL, NULL);


CREATE TABLE CourseEnrollment (
    CourseID INT,
    CourseName VARCHAR(100),
    CreditHours INT,
    Section VARCHAR(10),
    Instructor VARCHAR(50) DEFAULT NULL,
    Coordinator VARCHAR(50) DEFAULT NULL,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),	    
);

-- Semester 1
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (101, 'Introduction to Programming', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (101, 'Introduction to Programming', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (102, 'Mathematics for Computer Science', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (102, 'Mathematics for Computer Science', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (103, 'Digital Logic Design', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (103, 'Digital Logic Design', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (104, 'Computer Organization and Architecture', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (104, 'Computer Organization and Architecture', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (105, 'Discrete Mathematics', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (105, 'Discrete Mathematics', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (106, 'Data Structures and Algorithms', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (106, 'Data Structures and Algorithms', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (107, 'Database Systems', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (107, 'Database Systems', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (108, 'Computer Networks', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (108, 'Computer Networks', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (109, 'Operating Systems', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (109, 'Operating Systems', 4, 'B', NULL, NULL);

-- Semester 1 (continued)
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (110, 'Software Engineering', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (110, 'Software Engineering', 3, 'B', NULL, NULL);

-- Semester 2
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (201, 'Object-Oriented Programming', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (201, 'Object-Oriented Programming', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (202, 'Data Communication and Networking', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (202, 'Data Communication and Networking', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (203, 'Web Programming', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (203, 'Web Programming', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (204, 'Algorithms and Complexity', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (204, 'Algorithms and Complexity', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (205, 'Operating Systems II', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (205, 'Operating Systems II', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (206, 'Database Management Systems', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (206, 'Database Management Systems', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (207, 'Computer Graphics', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (207, 'Computer Graphics', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (208, 'Software Testing', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (208, 'Software Testing', 4, 'B', NULL, NULL);

-- Semester 2 (continued)
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (209, 'Artificial Intelligence', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (209, 'Artificial Intelligence', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (210, 'Machine Learning', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (210, 'Machine Learning', 4, 'B', NULL, NULL);

-- Semester 3
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (301, 'Advanced Programming', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (301, 'Advanced Programming', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (302, 'Computer Architecture', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (302, 'Computer Architecture', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (303, 'Information Security', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (303, 'Information Security', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (304, 'Database Design and Management', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (304, 'Database Design and Management', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (305, 'Software Development Lifecycle', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (305, 'Software Development Lifecycle', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (306, 'Mobile App Development', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (306, 'Mobile App Development', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (307, 'Web Application Security', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (307, 'Web Application Security', 4, 'B', NULL, NULL);

-- Semester 3 (continued)
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (308, 'Data Mining', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (308, 'Data Mining', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (309, 'Computer Vision', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (309, 'Computer Vision', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (310, 'Natural Language Processing', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (310, 'Natural Language Processing', 4, 'B', NULL, NULL);

-- Semester 4
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (401, 'Software Architecture', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (401, 'Software Architecture', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (402, 'Distributed Systems', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (402, 'Distributed Systems', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (406, 'Computer Vision and Image Processing', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (406, 'Computer Vision and Image Processing', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (407, 'Information Retrieval', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (407, 'Information Retrieval', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (408, 'Natural Language Understanding', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (408, 'Natural Language Understanding', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (409, 'Software Project Management', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (409, 'Software Project Management', 4, 'B', NULL, NULL);

-- Semester 5
-- Semester 5 (continued)
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (501, 'Software Quality Assurance', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (501, 'Software Quality Assurance', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (502, 'Data Warehousing', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (502, 'Data Warehousing', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (504, 'Network Security', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (504, 'Network Security', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (505, 'Wireless and Mobile Networks', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (505, 'Wireless and Mobile Networks', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (506, 'Advanced Database Systems', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (506, 'Advanced Database Systems', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (508, 'Software Defined Networking', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (508, 'Software Defined Networking', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (510, 'Advanced Algorithms', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (510, 'Advanced Algorithms', 4, 'B', NULL, NULL);

-- Semester 6
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (601, 'Software Maintenance and Evolution', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (601, 'Software Maintenance and Evolution', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (604, 'Data Science', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (604, 'Data Science', 4, 'B', NULL, NULL);

-- Semester 6 (continued)
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (605, 'Cybersecurity', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (605, 'Cybersecurity', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (606, 'Cloud Security', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (606, 'Cloud Security', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (607, 'Software Metrics and Measurement', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (607, 'Software Metrics and Measurement', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (608, 'Information Systems Analysis and Design', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (608, 'Information Systems Analysis and Design', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (609, 'Computer Forensics', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (609, 'Computer Forensics', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (610, 'Natural Language Generation', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (610, 'Natural Language Generation', 3, 'B', NULL, NULL);

-- Semester 7
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (701, 'Software Deployment and Configuration', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (701, 'Software Deployment and Configuration', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (703, 'Advanced Topics in Artificial Intelligence', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (703, 'Advanced Topics in Artificial Intelligence', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (704, 'Software Testing and Quality Assurance', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (704, 'Software Testing and Quality Assurance', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (705, 'Mobile and Ubiquitous Computing', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (806, 'Data Science and Analytics', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (806, 'Data Science and Analytics', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (807, 'Information Retrieval and Web Search', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (807, 'Information Retrieval and Web Search', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (808, 'Software Engineering Practices', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (808, 'Software Engineering Practices', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (809, 'Artificial Neural Networks', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (809, 'Artificial Neural Networks', 4, 'B', NULL, NULL);


INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (705, 'Mobile and Ubiquitous Computing', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (706, 'Natural Language Processing', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (706, 'Natural Language Processing', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (709, 'Intelligent Systems', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (709, 'Intelligent Systems', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (710, 'Advanced Web Technologies', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (710, 'Advanced Web Technologies', 4, 'B', NULL, NULL);

-- Semester 8
INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (801, 'Software Development Project', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (801, 'Software Development Project', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (802, 'Cloud Native Application Development', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (802, 'Cloud Native Application Development', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (803, 'Machine Learning and Deep Learning', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (803, 'Machine Learning and Deep Learning', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (804, 'Cybersecurity Management', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (804, 'Cybersecurity Management', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (805, 'Natural Language Understanding', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (805, 'Natural Language Understanding', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (806, 'Data Science and Analytics', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (806, 'Data Science and Analytics', 4, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (807, 'Information Retrieval and Web Search', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (807, 'Information Retrieval and Web Search', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (808, 'Software Engineering Practices', 3, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (808, 'Software Engineering Practices', 3, 'B', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (809, 'Artificial Neural Networks', 4, 'A', NULL, NULL);

INSERT INTO CourseEnrollment (CourseID, CourseName, CreditHours, Section, Instructor, Coordinator)
VALUES (809, 'Artificial Neural Networks', 4, 'B', NULL, NULL);




drop table CourseEnrollment
drop table students
drop table Teacher
drop table courses



-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

create table student(rollno varchar(20), name varchar(20));
select * from student
drop table student

insert into student values('i200654','Fatima Aamir')
insert into student values('i200540','Shameer Abdullah')
insert into student values('i204693','Isha Bilal')
insert into student values('i207740','Maryam Humayun')
insert into student values('i210040','Shanzay Naqvi')
insert into student values('i216551','Abdullah Nadeem')
insert into student values('i218302','Rafail')


------------------------------------------------------------------------------------------------------------------------


create table attendeance(name varchar(20), rollno varchar(20), attendance varchar(20), date varchar(20));
select * from attendeance;
drop table attendeance

------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Teachers (TeacherID INT PRIMARY KEY,Name VARCHAR(50));
select * from Teachers
drop table Teachers

INSERT INTO Teachers (TeacherID, Name)VALUES (1, 'Urooj Ghani');
INSERT INTO Teachers (TeacherID, Name) VALUES (2, 'Jane Smith');
INSERT INTO Teachers (TeacherID, Name) VALUES (3, 'Michael Johnson');

------------------------------------------------------------------------------------------------------------------------

create table marks(evaluation_name varchar(30), weightage numeric);
drop table marks
select* from marks

------------------------------------------------------------------------------------------------------------------------


create table evaluations(name varchar(30), rollno varchar(30),type varchar(30), marks numeric );
drop table evaluations
select * from evaluations;

------------------------------------------------------------------------------------------------------------------------


create table grades(rollno varchar(10), grade varchar(3));
drop table grades
select * from grades

------------------------------------------------------------------------------------------------------------------------

drop table Courses1
select * from Courses1

CREATE TABLE Courses1 (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);


INSERT INTO Courses1 (CourseID, CourseName, TeacherID) VALUES (1, 'Mathematics', 1);
INSERT INTO Courses1 (CourseID, CourseName, TeacherID) VALUES (2, 'English Literature', 1);
INSERT INTO Courses1 (CourseID, CourseName, TeacherID) VALUES (3, 'Physics', 3);


------------------------------------------------------------------------------------------------------------------------


create table usertype(name varchar(20), password varchar(20), usertype varchar(20),id varchar(20))
select * from usertype
drop table usertype

insert into  usertype values('Aamir1234','1234','admin','Aamir Rehman');
insert into  usertype values('Amina1234','1234','faculty','Amina Siddique');
insert into  usertype values('Shameer1234','1234','student','Shameer Abdullah');

------------------------------------------------------------------------------------------------------------------------

drop table feedback
CREATE TABLE Feedback (
    FullName VARCHAR(100) NOT NULL,
    Date DATE NOT NULL,
    Subject VARCHAR(100) NOT NULL,
    Schedule VARCHAR(100) NOT NULL,
    RoomNumber VARCHAR(100) NOT NULL,
    SchoolYear VARCHAR(100) NOT NULL,
    Rating1 INT NOT NULL,
    Rating2 INT NOT NULL,
    Rating3 INT NOT NULL,
    Rating4 INT NOT NULL,
    Rating5 INT NOT NULL,
    Comments VARCHAR(MAX) NOT NULL
);




-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------



--------------LOGIN TABLE----------------

drop table Students_Login1
CREATE TABLE Students_Login1 (
    RollNumber VARCHAR(20) PRIMARY KEY,
    Password VARCHAR(100),
    ARNNumber VARCHAR(20),
    BloodGroup VARCHAR(10)
);


INSERT INTO Students_Login1 (RollNumber, Password, ARNNumber, BloodGroup)
VALUES 
    ('i202470', 'password1', 'ARN123', 'A+'),
    ('i202471', 'password2', 'ARN124', 'B+'),
    ('i202472', 'password3', 'ARN125', 'O+'),
    ('i202473', 'password4', 'ARN126', 'AB+'),
    ('i202474', 'password5', 'ARN127', 'A-');

--SELECT Roll_Number, Password from Students_Login where Roll_Number='i202470' and Password='123';

--SELECT * FROM Students_Login1;

--------------TRANSCRIPT TABLE----------------
drop table transcript
CREATE TABLE transcript (roll_number VARCHAR(50), gpa FLOAT, semester INT);

INSERT INTO transcript (roll_number, gpa, semester) VALUES
  ('i202470', 3.75, 1),
  ('i202471', 3.6, 2),
  ('i202472', 3.9, 3),
  ('i202473', 3.2, 6),
  ('i202476', 3.45, 6),
  ('i202474', 3.8, 4);

--SELECT * FROM TRANSCRIPT;

--------------ATTENDANCE TABLE----------------
drop table attendance
CREATE TABLE attendance (roll_number VARCHAR(10), DATE varchar(30), attendance VARCHAR(10));

INSERT INTO attendance (roll_number, DATE, attendance)
VALUES ('i202470', '2023-05-01', 'Present');

INSERT INTO attendance (roll_number, DATE, attendance)
VALUES ('i202470', '2023-12-12', 'Absent');

INSERT INTO attendance (roll_number, DATE, attendance)
VALUES ('i202471', '2023-05-02', 'Absent');

INSERT INTO attendance (roll_number, DATE, attendance)
VALUES ('i202472', '2023-05-03', 'Present');

INSERT INTO attendance (roll_number, DATE, attendance)
VALUES ('i202473', '2023-05-04', 'Present');

INSERT INTO attendance (roll_number, date, attendance)
VALUES ('i202474', '2023-05-05', 'Absent');

--------------EVALUATION TABLE----------------

drop table evaluation
create table evaluation(roll_number varchar(32), quizz_marks int, assignment_marks int, project_marks int, exam_marks int);
select * from evaluation

INSERT INTO evaluation (roll_number, quizz_marks, assignment_marks, project_marks, exam_marks)
VALUES ('i202470', 85, 90, 95, 80);

INSERT INTO evaluation (roll_number, quizz_marks, assignment_marks, project_marks, exam_marks)
VALUES ('i202471', 75, 80, 85, 90);

INSERT INTO evaluation (roll_number, quizz_marks, assignment_marks, project_marks, exam_marks)
VALUES ('i202472', 95, 85, 90, 92);

INSERT INTO evaluation (roll_number, quizz_marks, assignment_marks, project_marks, exam_marks)
VALUES ('i202473', 80, 70, 88, 76);

INSERT INTO evaluation (roll_number, quizz_marks, assignment_marks, project_marks, exam_marks)
VALUES ('i202474', 70, 65, 78, 82);

INSERT INTO evaluation (roll_number, quizz_marks, assignment_marks, project_marks, exam_marks)
VALUES ('i202475', 88, 92, 80, 85);

--------------GRAPH TABLE----------------
drop table CGPAData
CREATE TABLE CGPAData (
    RollNumber VARCHAR(50) NOT NULL,
    Semester VARCHAR(50) NOT NULL,
    CGPA FLOAT NOT NULL
);

INSERT INTO CGPAData (RollNumber, Semester, CGPA)
VALUES
    ('i202470', 'Semester 1', 3.5),
    ('i202470', 'Semester 2', 3.9),
    ('i202470', 'Semester 3', 3.7),
    ('i202470', 'Semester 4', 3.8),
    ('i202471', 'Semester 1', 3.2),
    ('i202471', 'Semester 2', 3.6),
    ('i202471', 'Semester 3', 3.4),
    ('i202471', 'Semester 4', 3.9);

--------------FEEDBACK TABLE----------------
drop table Feedback
CREATE TABLE Feedback (
    FullName VARCHAR(100) NOT NULL,
    Date DATE NOT NULL,
    Subject VARCHAR(100) NOT NULL,
    Schedule VARCHAR(100) NOT NULL,
    RoomNumber VARCHAR(100) NOT NULL,
    SchoolYear VARCHAR(100) NOT NULL,
    Rating1 INT NOT NULL,
    Rating2 INT NOT NULL,
    Rating3 INT NOT NULL,
    Rating4 INT NOT NULL,
    Rating5 INT NOT NULL,
    Comments VARCHAR(MAX) NOT NULL
);


select * from attendance

select * fee