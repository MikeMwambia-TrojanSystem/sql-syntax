
-- Template
DELIMITER $$

CREATE TRIGGER trigger_name
     trigger_time trigger_event ON table_name FOR EACH ROW
     BEGIN
     END;
$$

DELIMITER ;


-- The major broad use case is : - 
-- Validating data and updating other table same as mongoose validator 
-- in mongDB but within the DB
DELIMITER $$

CREATE TRIGGER must_be_adult
     BEFORE INSERT ON users FOR EACH ROW
     BEGIN
          IF NEW.age < 18
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;
-- Better to have this on client side

-- Delimiter tag means you change the delimeter
-- from ; at the top to at the bottom $$


-- Prevent self follow
DELIMITER $$ 

CREATE TRIGGER prevent_self_follows
BEFORE INSERT ON follows FOR EACH ROW
BEGIN 
IF NEW.follower_id = NEW.followee_id
THEN 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'You cannot follow yourself';
END IF;
END;
$$
DELIMITER ;


DELIMITER $$

CREATE TRIGGER create_unfollow 
AFTER DELETE ON follows FOR EACH ROW 
BEGIN 
INSERT INTO unfollows 
SET 
follower_id = OLD.follower_id,
followee_id = OLD.followee_id;
END;
$$

DELIMITER ;
