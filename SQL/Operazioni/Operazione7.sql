DELETE FROM Scheda
WHERE CodScheda =( SELECT CodScheda
			FROM Contenitore
			WHERE CodRipiano=”Rip46”);
            
DELETE FROM Contenitore
WHERE CodRipiano=”Rip46” ;

DELETE FROM Ripiano
WHERE CodRipiano=”Rip46” ;