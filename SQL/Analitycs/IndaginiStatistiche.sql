-- data una determinata patologie, vedo quanti episodi ci sono stati a causa di una tempeatura errata della sezione


DROP PROCEDURE IF EXISTS PatologiaTemperatura;

DELIMITER $$

CREATE PROCEDURE PatologiaTemperatura(IN  Pat     VARCHAR(45),
                                      OUT Pat2    VARCHAR(45),
                                      OUT pattot  INT(5),
                                      OUT pattemp INT(5))
BEGIN

DECLARE finito   INTEGER DEFAULT 0;

DECLARE tempmin  INT(5) DEFAULT 0;
DECLARE tempmax  INT(5) DEFAULT 0;
DECLARE tempatt  INT(5) DEFAULT 0;

DECLARE Pat12        VARCHAR(45);
DECLARE Scheda12     VARCHAR(45);


DECLARE pat1
CURSOR FOR
SELECT c1.CodPatologia, c1.CodScheda
FROM patologia p1 inner join contrae c1 on c1.CodPatologia=p1.CodPatologia
     inner join contenitore c2 on c2.CodScheda=c1.CodScheda
WHERE p1.Nome=Pat;

DECLARE CONTINUE HANDLER
FOR NOT FOUND SET finito=1;

OPEN pat1;

scan: LOOP

FETCH pat1 INTO Pat12, Scheda12;

IF finito = 1 THEN
  LEAVE scan;
END IF;

SET tempatt = (SELECT sz1.TemperaturaSez
               FROM contenitore cr1 inner join ripiano r1 on r1.CodRipiano=cr1.CodRipiano
                       inner join sezione sz1 on sz1.CodSezione=r1.CodSezione
			   WHERE cr1.CodScheda=Scheda12);
               
SET tempmin = (SELECT t2.TemperaturaMin
               FROM scheda sc2 inner join pianta p2 on p2.CodScheda=sc2.CodScheda
                    inner join stato st1 on st1.CodPianta=p2.CodPianta
                    inner join temperatura t2 on t2.CodTemperatura=st1.CodTemperatura
			   WHERE sc2.CodScheda=Scheda12);
               
SET tempmax = (SELECT t3.TemperaturaMax
               FROM scheda sc3 inner join pianta p3 on p3.CodScheda=sc3.CodScheda
                    inner join stato st3 on st3.CodPianta=p3.CodPianta
                    inner join temperatura t3 on t3.CodTemperatura=st3.CodTemperatura
			   WHERE sc3.CodScheda=Scheda12);
               
IF tempatt>tempmax THEN
   SET pattemp=pattemp+1;
END IF;

IF tempatt<tempmix THEN
   SET pattemp=pattemp+1;
END IF;


SET pattot=pattot+1;


END LOOP scan;


END $$

DELIMITER ;
