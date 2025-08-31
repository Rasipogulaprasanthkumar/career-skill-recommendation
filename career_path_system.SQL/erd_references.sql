	-- REFERENCES
-- users to users skills
alter table userskill add constraint foreign key(user_id) references users(user_id);
-- user to Recomendation
alter table Recommendation add constraint foreign key(user_id) references users(user_id);

-- user to JObRole
-- alter table JobRole add constraint foreign key(industry_id) references users(user_id);

-- user to education
alter table education add constraint foreign key(user_id) references users(user_id);

-- -- user to Certificarons
-- alter table certification add constraint foreign key(validity_years) references users(user_id);

-- user to usercertification
alter table usercertification add constraint foreign key(user_id) references users(user_id);

-- user to course
-- alter table course add constraint foreign key(provider_id) references users(user_id);

-- user to usercourse
alter table usercourse add constraint foreign key(user_id) references users(user_id);
 -- user to userFeedback
alter table UserFeedback add constraint foreign key(user_id) references users(user_id);
-- user to userTestResult
alter table usertestresult add constraint foreign key(user_id) references users(user_id);


-- skill to userskill
alter table userskill add constraint foreign key(user_id) references skill(skill_id);

-- course to usercourse
alter table usercourse add constraint foreign key(course_id) references course(course_id);

-- course to SkillCourseMapping
alter table skillcoursemapping add constraint foreign key(course_id) references course(course_id);

-- skill to skillCourseMapping
alter table skillcoursemapping add constraint foreign key(skill_id) references skill(skill_id);

-- certification to usercertification
alter table usercertification add constraint foreign key(cert_id) references certification(cert_id);

-- AssessmentTest to userTestResult
alter table usertestresult add constraint foreign key(user_id) references AssessmentTest(test_id);

-- jobRole to Recommendation
alter table recommendation add constraint foreign key(role_id) references jobrole(role_id);

-- jobrole to roleskillmapping
alter table roleskillmapping add constraint foreign key(role_id) references jobrole(role_id);

-- jobrole to jobposting
alter table jobposting add constraint foreign key(role_id) references jobrole(role_id);

-- jobrole to PathRoleMapping
alter table pathrolemapping add constraint foreign key(role_id) references jobrole(role_id);

-- jobrole to industry
alter table industry add constraint foreign key(industry_id) references jobrole(role_id);

-- skill to RoleMapping
alter table roleskillmapping add constraint foreign key(skill_id) references skill(skill_id);

-- company to jobposting
alter table jobposting add constraint foreign key(company_id) references company(company_id);

-- company to industry
alter table industry add constraint foreign key(industry_id) references company(company_id);

-- carrerpath to pathroleMapping
alter table pathrolemapping add constraint foreign key(path_id) references careerpath(path_id);