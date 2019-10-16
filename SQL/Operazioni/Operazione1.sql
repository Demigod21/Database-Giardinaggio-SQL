DELIMITER $$

CREATE PROCEDURE Efficacia (IN prod VARCHAR(45),
                            OUT efficacia VARCHAR(45))
BEGIN
DECLARE trattamentipos int(5);
DECLARE trattamentitot int(5);
DECLARE perc           DOUBLE;

SET trattamentipos = (SELECT count(*)
                      FROM trattamento t1
					  WHERE t1.CodProdotto=prod
                          AND t1.esito=1);
SET trattamentitot = (SELECT COUNT(*)
                      FROM trattamento t2
                      WHERE t2.CodProdotto=prod);
                      
SET perc = (trattamentipos/trattamentitot)*100;

IF perc>80  THEN
   SET efficacia='si';
END IF;

IF perc<=80 THEN
  SET efficacia='no';
END IF;



END