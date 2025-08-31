		--  CAREER PATH SKILL MAPPING AND RECOMMENDATION SYSTEM
-- insert into values 

-- 1. User

insert into User values
(1, 'Alice Johnson', 'alice@example.com', 'B.Tech Computer Science', 2),
(2, 'Bob Smith', 'bob@example.com', 'MCA', 5),
(3, 'Charlie Brown', 'charlie@example.com', 'B.Sc IT', 1);

-- 2. Industry

insert into Industry values
(1, 'Information Technology', 'Software and technology services'),
(2, 'Finance', 'Banking and financial services'),
(3, 'Healthcare', 'Medical and health-related services');

-- 3. Skill

insert into Skill values
(1, 'Java', 'Programming'),
(2, 'Python', 'Programming'),
(3, 'React JS', 'Frontend Development'),
(4, 'SQL', 'Database'),
(5, 'Machine Learning', 'AI/ML');

-- 4. JobRole

insert into JobRole values
(1, 'Fullstack Developer', 'Information Technology'),
(2, 'Data Analyst', 'Finance'),
(3, 'AI Engineer', 'Healthcare');

-- 5. Company

insert into Company values
(1, 'TechCorp', 1, 'Bangalore'),
(2, 'FinServe', 2, 'Mumbai'),
(3, 'MediSoft', 3, 'Hyderabad');

-- 6. RoleSkillMapping

insert into RoleSkillMapping values
(1, 1, 'Advanced'),
(1, 3, 'Intermediate'),
(2, 4, 'Advanced'),
(2, 2, 'Intermediate'),
(3, 5, 'Advanced'),
(3, 2, 'Advanced');

-- 7. UserSkill

insert into UserSkill values
(1, 1, 'Intermediate'),
(1, 3, 'Beginner'),
(2, 4, 'Advanced'),
(2, 2, 'Advanced'),
(3, 5, 'Beginner');

-- 8. Recommendation

insert into Recommendation values
(1, 1, 1, 'React JS'),
(2, 2, 3, 'Machine Learning'),
(3, 3, 2, 'SQL');

-- 9. JobPosting

insert into JobPosting values
(1, 1, 1, 101, '5-7 LPA'),
(2, 2, 2, 102, '4-6 LPA'),
(3, 3, 3, 103, '8-10 LPA');

-- 10. Education

insert into Education values
(1, 1, 'B.Tech Computer Science', 'VEMU IT', 2023),
(2, 2, 'MCA', 'Anna University', 2020),
(3, 3, 'B.Sc IT', 'Osmania University', 2024);

-- 11. Certification

insert into Certification values
(1, 'Java Developer', 'Oracle', 3),
(2, 'Data Science Professional', 'IBM', 2),
(3, 'Frontend Developer', 'Meta', 3),
(4, 'SQL Developer' , 'TCS', 4);

-- 12. UserCertification

insert into UserCertification values
(1, 1, '2023-05-10'),
(2, 2, '2022-08-15'),
(3, 3, '2024-01-20');

-- 13. Course

insert into Course values
(1, 'Java Programming', 'Coursera', 8),
(2, 'Advanced SQL', 'Udemy', 6),
(3, 'Machine Learning Basics', 'edX', 10);

-- 14. SkillCourseMapping

insert into SkillCourseMapping values
(1, 1),
(4, 2),
(5, 3);

-- 15. UserCourse

insert into UserCourse values
(1, 1, 80.50),
(2, 2, 100.00),
(3, 3, 45.75);

-- 16. AssessmentTest

insert into AssessmentTest values
(1, 'Java Proficiency Test', 'Evaluates Java programming skills'),
(2, 'SQL Mastery Test', 'Tests advanced SQL knowledge'),
(3, 'Machine Learning Aptitude', 'Assesses ML knowledge');

-- 17. UserTestResult

insert into UserTestResult values
(1, 1, 75.50),
(2, 2, 88.00),
(3, 3, 60.25);

-- 18. CareerPath

insert into CareerPath values
(1, 'Fullstack Developer Path', 'Covers frontend and backend technologies'),
(2, 'Data Science Path', 'Includes analytics, ML, and data handling'),
(3, 'AI Engineer Path', 'Focuses on AI/ML and deep learning');

-- 19. PathRoleMapping

insert into PathRoleMapping values
(1, 1),
(2, 2),
(3, 3);

-- 20. UserFeedback

insert into UserFeedback values
(1, 1, 'The recommendation system is very helpful!', '2024-11-10'),
(2, 2, 'Courses are relevant and well-structured.', '2024-12-15'),
(3, 3, 'Would like more AI-related resources.', '2025-01-05');