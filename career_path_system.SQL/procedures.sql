       --Stored Procedure

DELIMITER //
CREATE PROCEDURE get_user_skills(IN uid INT)
BEGIN
    SELECT s.skill_name, us.proficiency_level
    FROM UserSkill us
    JOIN Skill s ON us.skill_id = s.skill_id
    WHERE us.user_id = uid;
END //
DELIMITER ;