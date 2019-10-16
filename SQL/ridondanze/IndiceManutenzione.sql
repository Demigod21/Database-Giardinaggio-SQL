DELIMITER $$

CREATE TRIGGER IndiceManutenzione
BEFORE INSERT ON Pianta
FOR EACH ROW
BEGIN
  DECLARE var INT(5) DEFAULT 0;
  IF NEW.Fogliame="caducifoglie" THEN
  SET var=1;
  END IF;
  SET  NEW.IndiceManutenzione=(IndiceAccrescimentoRadice+IndiceAccrescimentoAerea)/2+1;
END ; 