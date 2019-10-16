-- creo una tabella in cui per ogni cultivar assegno il numero di patologie contratte che tengo aggiornata
-- con un trigger su contae

CREATE TABLE Report(
  Cultivar                   VARCHAR(45) NOT NULL,
  PatologieContratte         INT(5) NOT NULL,
  PRIMARY KEY (Cultivar)
) ENGINE = InnoDB;


DELIMITER $$

CREATE PROCEDURE Reporting()
BEGIN

INSERT INTO Report(Cultivar, PatologieContratte)
SELECT p.Cultivar, COUNT(*) AS PatologieContratte
FROM pianta p natural join scheda s natural join patologia p1
GROUP BY p.Cultivar
ORDER BY PatologieContratte;

END $$

DELIMITER ;


--  TRIGGER

DELIMITER $$


CREATE TRIGGER  shish
AFTER INSERT ON Contrae
FOR EACH ROW
BEGIN

DECLARE cult VARCHAR(45);

SET cult = (SELECT p1.Cultivar
            FROM Contrae c1 inner join pianta p1 on p1.CodScheda=c1.CodScheda);

UPDATE Report r1
SET r1.PatologieContratte=r1.PatologieContratte+1
WHERE r1.Cultivar=cult;


END $$