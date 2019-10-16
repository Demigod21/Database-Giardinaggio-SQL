
DELIMITER $$

CREATE PROCEDURE Efficacia (IN prod VARCHAR(45),
                            OUT efficacia VARCHAR(45))
BEGIN

DECLARE perc           double;
DECLARE trattamentipos  INT(5);
DECLARE trattamentitot  INT(5);

SET trattamentipos = (SELECT p1.TrattamentiPositivi
                      FROM Prodotto p1);


SET trattamentipos = (SELECT p2.TrattamentiTotali
                      FROM Prodotto p2);
                      
SET perc = (trattamentipos/trattamentitot)*100;

IF perc>80  THEN
   SET efficacia='si';
END IF;

IF perc<=80 THEN
  SET efficacia='no';
END IF;



END