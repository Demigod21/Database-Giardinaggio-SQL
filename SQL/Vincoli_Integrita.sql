DELIMITER $$

-- CONTROLLA CHE LA VALUTAZIONE DELLA RISPOSTA SIA DA 0 A 5

CREATE TRIGGER rangeval
BEFORE INSERT ON Risposta
FOR EACH ROW
BEGIN
IF new.Valutazione>5 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Valutazione deve essere compresa tra 0 e 5';
END IF;
IF new.Valutazione<0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Valutazione deve essere compresa tra 0 e 5.';
END IF;

END; $$


-- CONTROLLA CHE GLI INDICI DI ACCRESCIMENTO SIANO COMPRESI TRA 0 E 9


CREATE TRIGGER rangeIndice
BEFORE INSERT ON Pianta
FOR EACH ROW
BEGIN
IF new.IndiceAccrescimentoAerea>9 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'L indice di accrescimento deve essere compreso tra 0 e 9';
END IF;
IF new.IndiceAccrescimentoAerea<0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'L indice di accrescimento deve essere compreso tra 0 e 9';
END IF;
IF new.IndiceAccrescimentoRadice>9 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'L indice di accrescimento deve essere compreso tra 0 e 9';
END IF;
IF new.IndiceAccrescimentoRadice<0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'L indice di accrescimento deve essere compreso tra 0 e 9';
END IF;

END; $$

-- controlla che se la pianta non si trova in un vaso, la dimensione del vaso sia messa a NULL

CREATE TRIGGER vasoScheda
BEFORE INSERT ON Scheda
FOR EACH ROW
BEGIN
IF new.CollocazioneS='terra' THEN
   IF new.DimensioneVaso IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
	  SET MESSAGE_TEXT = 'Il vaso non può avere dimensione in quanto non esiste';
	END IF;

END IF;

END; $$


