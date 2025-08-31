	-- CAREER PATH SKILL MAPPING AND RECOMMENDATION SYSTEM

	create database project;
	use project;

	-- 1. User
    
create table User (
    user_id int primary key,
    name varchar(100),
    email varchar(100),
    education_level varchar(50),
    experience_years int
);

	-- 2. Industry
    
create table Industry (
    industry_id int primary key,
    industry_name varchar(100),
    description text
);

	-- 3. Skill
    
create table Skill (
    skill_id int primary key,
    skill_name varchar(100),
    category varchar(50)
);

	-- 4. JobRole
    
create table JobRole (
    role_id int primary key,
    role_name varchar(100),
    industry varchar(50)
);

	-- 5. Company
    
create table Company (
    company_id int primary key,
    company_name varchar(100),
    industry_id int,
    location varchar(100)
);

	-- 6. RoleSkillMapping
    
create table RoleSkillMapping (
    role_id int,
    skill_id int,
    proficiency_level_required varchar(20)
);

	-- 7. UserSkill
    
create table UserSkill (
    user_id int,
    skill_id int,
    proficiency_level varchar(20)
);

	-- 8. Recommendation
    
create table Recommendation (
    recommendation_id int primary key,
    user_id int,
    role_id int,
    missing_skills text
);

	-- 9. JobPosting
    
create table JobPosting (
    job_id int primary key,
    role_id int,
    company_id int,
    job_description int,
    salary_range varchar(50)
);

	-- 10. Education
    
create table Education (
    education_id int primary key,
    user_id int,
    degree varchar(100),
    institution varchar(100),
    year_completed int
);

	-- 11. Certification
    
create table Certification (
    cert_id int primary key,
    cert_name varchar(100),
    issuer varchar(100),
    validity_years int
);

	-- 12. UserCertification
    
create table UserCertification (
    user_id int,
    cert_id int,
    date_obtained date
);

	-- 13. Course
    
create table Course (
    course_id int primary key,
    course_name varchar(100),
    provider varchar(100),
    duration_weeks int
);

	-- 14. SkillCourseMapping
    
create table SkillCourseMapping (
    skill_id int,
    course_id int
);

	-- 15. UserCourse
    
create table UserCourse (
    user_id int,
    course_id int,
    progress_percentage decimal(5,2)
);

-- 16. AssessmentTest

create table AssessmentTest (
    test_id int primary key,
    test_name varchar(100),
    description text
);

-- 17. UserTestResult

create table UserTestResult (
    user_id int,
    test_id int,
    score decimal(5,2)
);

-- 18. CareerPath

create table CareerPath (
    path_id int primary key,
    path_name varchar(100),
    description text
);

-- 19. PathRoleMapping

create table PathRoleMapping (
    path_id int,
    role_id int
);

-- 20. UserFeedback

create table UserFeedback (
    feedback_id int primary key,
    user_id int,
    feedback_text text,
    date_submitted date
);
