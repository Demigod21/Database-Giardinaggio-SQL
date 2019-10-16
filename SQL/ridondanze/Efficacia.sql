ALTER TABLE Prodotto
ADD COLUMN  TrattamentiTotali     INT(5) NOT NULL,
ADD COLUMN  TrattamentiPositivi   INT(5) NOT NULL;

DELIMITER $$

CREATE TRIGGER AggiornaEfficacia1
AFTER INSERT ON trattamento
FOR EACH ROW
BEGIN
  UPDATE Prodotto p2
  SET   p2.TrattamentiTotali=p2.TrattamentiTotali+1
  WHERE p2.CodProdotto=NEW.CodProdotto;

END ; $$

CREATE TRIGGER AggiornaEfficacia2
AFTER INSERT ON trattamento
FOR EACH ROW
BEGIN
  UPDATE Prodotto p1
  SET   p1.TrattamentiPositivi=p1.TrattamentiPositivi+1
  WHERE p1.CodProdotto=NEW.CodProdotto
       AND NEW.Esito=1;

END ; $$

