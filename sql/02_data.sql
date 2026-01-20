USE university_db;

INSERT INTO Majors VALUES
('CS', 'Dr. Smith'),
('Physics', 'Dr. Lee');

INSERT INTO Students VALUES
('S101', 'Alice', 'alice@uni.edu', 'CS'),
('S102', 'Bob', 'bob@uni.edu', 'CS'),
('S103', 'Carol', 'carol@uni.edu', 'Physics');

INSERT INTO Courses VALUES
('CS301', 'Algorithms', 4, 'Science', '205'),
('MATH201', 'Linear Algebra', 3, 'Math Wing', '101'),
('PHYS101', 'Mechanics', 4, 'Science', '301');

INSERT INTO Enrollments VALUES
('S101', 'CS301', 'A'),
('S101', 'MATH201', 'B'),
('S102', 'CS301', 'C'),
('S103', 'PHYS101', 'A');
