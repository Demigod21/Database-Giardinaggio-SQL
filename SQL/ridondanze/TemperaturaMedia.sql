ALTER TABLE Serra
	ADD COLUMN TempMediaSerra DOUBLE;

DELIMITER $$

CREATE TRIGGER TempMediaSerra
AFTER INSERT ON Sezione
FOR EACH ROW 
	UPDATE Serra
	SET TempMediaSerra=(SELECT AVG(SE.TemperaturaSez)
				FROM Serra SA INNER JOIN Sezione SE ON SA.CodSerra = SE.CodSerra
				WHERE Serra.CodSerra= NEW.CodSerra)
	WHERE Serra.CodSerra= NEW.CodSerra;
