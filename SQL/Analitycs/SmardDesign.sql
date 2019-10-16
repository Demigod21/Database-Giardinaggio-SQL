-- un utente esprime un grado di manutenzione e un prezzo massimo, e il server suggerisce 10 piante che 
-- rispettano tali requisiti, di cui 5 che fioriscono d'estate e 5 che fioriscono d'inverno



CREATE TABLE SmartDesign(
  CodSuggerimento  VARCHAR(45) NOT NULL,
  NomePianta       VARCHAR(45) NOT NULL,
  Prezzo           INT(5) NOT NULL,
  PRIMARY KEY (CodSuggerimento),
  FOREIGN KEY (CodSuggerimento)
     REFERENCES Scheda(CodScheda)
	 ON DELETE CASCADE
     ON UPDATE CASCADE
) ENGINE = InnoDB;


DELIMITER $$

CREATE PROCEDURE smartdesign(IN ind_man VARCHAR(45), IN PMax INT(5))
BEGIN

DECLARE inf INT(5) DEFAULT 0;
DECLARE sup INT(5) DEFAULT 0;
DELETE FROM SmartDesign;

CASE
  WHEN ind_man='basso' THEN 
   BEGIN
      SET inf= 0;
      SET sup= 4;
   END;
  WHEN ind_man='medio' THEN 
    BEGIN
      SET inf= 4;
      SET sup= 7;
    END;
  WHEN ind_man='alto'  THEN 
    BEGIN
      SET inf= 7;
	  SET sup= 10;
    END;
END CASE;

INSERT INTO SmartDesign(CodSuggerimento, NomePianta, Prezzo)
SELECT s.CodScheda, p.Nome, s.Prezzo
FROM pianta p natural join scheda s
WHERE p.IndiceManutenzione>= inf AND p.IndiceManutenzione < sup AND s.Prezzo<=Pmax
    AND p.CodPianta IN (SELECT pr.CodPianta
                        FROM periodo pr
                        WHERE MONTH(pr.MeseInizio) >= 5 AND MONTH(pr.MeseFine) <=10)
ORDER BY s.Prezzo
LIMIT 5;

INSERT INTO SmartDesign(CodSuggerimento, NomePianta, Prezzo)
SELECT s.CodScheda, p.Nome, s.Prezzo
FROM pianta p natural join scheda s
WHERE p.IndiceManutenzione>= inf AND p.IndiceManutenzione < sup AND s.Prezzo<=Pmax
    AND p.CodPianta IN (SELECT pr.CodPianta
                        FROM periodo pr
                        WHERE MONTH(pr.MeseInizio) >= 10 AND MONTH(pr.MeseFine) <=2)
ORDER BY s.Prezzo
LIMIT 5;

END ;

DELIMITER ;