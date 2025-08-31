       --Views
CREATE VIEW user_recommendations AS
SELECT u.name, jr.role_name, r.missing_skills
FROM Recommendation r
JOIN Users u ON r.user_id = u.user_id
JOIN JobRole jr ON r.role_id = jr.role_id;