DELIMITER $$

CREATE TRIGGER Reputazione
AFTER INSERT ON Risposta
FOR EACH ROW
BEGIN
  DECLARE var INT(5) DEFAULT 0;
  IF NEW.Valutazione>=4 THEN
  SET var=1;
  END IF;
  UPDATE Profilo p
  SET p.Reputazione=p.Reputazione+var
  WHERE p.Nickname=NEW.Nickname;
END ; 