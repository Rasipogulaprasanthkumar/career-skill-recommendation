 Useful Queries
-- 1. Find users and their skills
SELECT u.name, s.skill_name, us.proficiency_level
FROM Users u
JOIN UserSkill us ON u.user_id = us.user_id
JOIN Skill s ON us.skill_id = s.skill_id;

-- 2. Recommended roles with missing skills
SELECT u.name, jr.role_name, r.missing_skills
FROM Recommendation r
JOIN Users u ON r.user_id = u.user_id
JOIN JobRole jr ON r.role_id = jr.role_id;

-- 3. Job postings with company
SELECT jp.job_id, jr.role_name, c.company_name, jp.salary_range
FROM JobPosting jp
JOIN JobRole jr ON jp.role_id = jr.role_id
JOIN Company c ON jp.company_id = c.company_id;