CREATE TABLE Illuminazione
(
    CodIlluminazione             VARCHAR(45) NOT NULL,
	QuantitaSole                 INT(5) NOT NULL,
    NumeroMinimoOre              INT(5) NOT NULL,
    TipoLuce                     VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodIlluminazione)
) ENGINE = InnoDB;


CREATE TABLE Irrigazione
(
    CodIrrigazione              VARCHAR(45) NOT NULL,
	Periodicita                 INT(5) NOT NULL,
    Fabbisogno	                VARCHAR(45) NOT NULL,
    QuantitaAcqua               INT(5) NOT NULL,
    PRIMARY KEY (CodIrrigazione)
) ENGINE = InnoDB;


-- temperatura

CREATE TABLE Temperatura
(
    CodTemperatura              VARCHAR(45) NOT NULL,
	TemperaturaMin              INT(5) NOT NULL,
    TemperaturaMax	            INT(5) NOT NULL,
    PRIMARY KEY (CodTemperatura)
) ENGINE = InnoDB;


-- concimazione

CREATE TABLE Concimazione
(
    CodConcimazione            VARCHAR(45) NOT NULL,
	Sostanza                   VARCHAR(45) NOT NULL,
    QuantitaC	               INT(5) NOT NULL,
    PeriodicitaC               INT(5) NOT NULL,
    PRIMARY KEY (CodConcimazione)
) ENGINE = InnoDB;


-- patologia

CREATE TABLE Patologia
(
    CodPatologia            VARCHAR(45) NOT NULL,
	NomePatologia           VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodPatologia)
) ENGINE = InnoDB;


-- sintomo

CREATE TABLE Sintomo
(
    CodSintomo            VARCHAR(45) NOT NULL,
	DescrizioneSin        VARCHAR(1000) NOT NULL,
    PRIMARY KEY (CodSintomo)
) ENGINE = InnoDB;


-- sede

CREATE TABLE Sede
(
    CodSede                        VARCHAR(45) NOT NULL,
	NomeSede                       VARCHAR(45) NOT NULL,
    IndirizzoSede	               VARCHAR(45) NOT NULL,
    CittaSede		               VARCHAR(45) NOT NULL,
    NumeroDipendenti               INT(5) NOT NULL,
    PRIMARY KEY (CodSede)
) ENGINE = InnoDB;


-- serra

CREATE TABLE Serra
(
    CodSerra                       VARCHAR(45) NOT NULL,
	NomeSerra                      VARCHAR(45) NOT NULL,
    NumeroPianteMaxSerra           INT(5) NOT NULL,
    NumeroPiantePresSerra          INT(5) NOT NULL,
    Altezza                        INT(5) NOT NULL,
    Lunghezza                      INT(5) NOT NULL,
    Larghezza                      INT(5) NOT NULL,
    IndirizzoSerra	               VARCHAR(45) NOT NULL,
    CittaSerra		               VARCHAR(45) NOT NULL,
    CodSede                        VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodSerra),
	FOREIGN KEY (CodSede)
        REFERENCES Sede(CodSede)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- sezione

CREATE TABLE Sezione
(
    CodSezione                       VARCHAR(45) NOT NULL,
	NomeSezione                      VARCHAR(45) NOT NULL,
    NumeroPianteMaxSezione           INT(5) NOT NULL,
    NumeroPiantePresSezione          INT(5) NOT NULL,
    TemperaturaSez                   INT(5) NOT NULL,
    UmiditaSez                       INT(5) NOT NULL,
    CodSerra                         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodSezione),
	FOREIGN KEY (CodSerra)
        REFERENCES Serra(CodSerra)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- ripiano

CREATE TABLE Ripiano
(
    CodRipiano                      VARCHAR(45) NOT NULL,
    LivIrrigazioneRipiano           VARCHAR(45) NOT NULL,
	CodSezione                      VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodRipiano),
	FOREIGN KEY (CodSezione)
        REFERENCES Sezione(CodSezione)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- elemento

CREATE TABLE Elemento
(
    CodElemento            VARCHAR(45) NOT NULL,
	NomeElemento           VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodElemento)
) ENGINE = InnoDB;


-- principio attivo

CREATE TABLE PrincipioAttivo
(
    CodPrincipioAttivo            VARCHAR(45) NOT NULL,
    NomePrincipioAttivo           VARCHAR(45) NOT NULL,
	Concentrazione                INT(5) NOT NULL,
    PRIMARY KEY (CodPrincipioAttivo)
) ENGINE = InnoDB;


-- immagine

CREATE TABLE Immagine
(
    CodImmagine           VARCHAR(45) NOT NULL,
	Foto                  VARCHAR(45) NOT NULL,
    CodSintomo            VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodImmagine),
    	FOREIGN KEY (CodSintomo)
        REFERENCES Sintomo(CodSintomo)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;



-- prodotto

CREATE TABLE Prodotto
(
    CodProdotto           VARCHAR(45) NOT NULL,
    NomeProdotto          VARCHAR(45) NOT NULL,
	AttesaMinima          INT(5) NOT NULL,
    Modalita              VARCHAR(45) NOT NULL,
    TipologiaProdotto     VARCHAR(45) NOT NULL,
	InizioPeriodoDivieto  DATE NOT NULL,
	FinePeriodoDivieto    DATE NOT NULL,
    PRIMARY KEY (CodProdotto)
) ENGINE = InnoDB;


-- profilo

CREATE TABLE Profilo
(
    Nickname             VARCHAR(45) NOT NULL,
	Nome                 VARCHAR(45) NOT NULL,
    Cognome              VARCHAR(45) NOT NULL,
	Email                VARCHAR(45) NOT NULL,
	Password             VARCHAR(45) NOT NULL,
    DomandaSegreta       VARCHAR(45) NOT NULL,
	RispostaSegreta      VARCHAR(45) NOT NULL,
	IndirizzoProfilo     VARCHAR(45) NOT NULL,
	CittaProfilo         VARCHAR(45) NOT NULL,
	Reputazione          INT(5) NOT NULL,

    PRIMARY KEY (Nickname)
) ENGINE = InnoDB;


-- thread

CREATE TABLE Thread
(
    CodThread             VARCHAR(45) NOT NULL,
	Link                  VARCHAR(100),
    TestoThread           TEXT NOT NULL,
    Nickname              VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodThread),
	FOREIGN KEY (Nickname)
        REFERENCES Profilo(Nickname)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- risposta

CREATE TABLE Risposta
(
    CodRisposta        VARCHAR(45) NOT NULL,
	Valutazione        INT(5) NOT NULL,
    DataRisposta       DATE NOT NULL,
    TestoRisposta      TEXT NOT NULL,
    Nickname           VARCHAR(45) NOT NULL,
    CodThread          VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodRisposta),
	FOREIGN KEY (Nickname)
        REFERENCES Profilo(Nickname)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodThread)
        REFERENCES Thread(CodThread)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- giardino

CREATE TABLE Giardino
(
    CodGiardino           VARCHAR(45) NOT NULL,
    Nickname              VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodGiardino),
	FOREIGN KEY (Nickname)
        REFERENCES Profilo(Nickname)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- progetto

CREATE TABLE Progetto
(
    CodProgetto              VARCHAR(45) NOT NULL,
	CostoPreventivo          INT(5) NOT NULL,
    IndiceManutenzionePr     INT(5) NOT NULL,
    CodGiardino              VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodProgetto),
	FOREIGN KEY (CodGiardino)
        REFERENCES Giardino(CodGiardino)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;

-- settore

CREATE TABLE Settore
(
    CodSettore              VARCHAR(45) NOT NULL,
	OreSole                  INT(5) NOT NULL,
    PuntoCardinale           VARCHAR(45) NOT NULL,
	TipoSettore              VARCHAR(45) NOT NULL,
    CodGiardino              VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodSettore),
	FOREIGN KEY (CodGiardino)
        REFERENCES Giardino(CodGiardino)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- vertice

CREATE TABLE Vertice
(
    IdVertice     INT AUTO_INCREMENT NOT NULL,
    X             INT(5) NOT NULL,
    Y             INT(5) NOT NULL,
    PRIMARY KEY (IdVertice)
) ENGINE = InnoDB;


-- substrato

CREATE TABLE Substrato
(
    CodSubstrato    VARCHAR(45) NOT NULL,
	ConsistenzaS    VARCHAR(45),
    Ph              INT(5) NOT NULL,
    PermeabilitàS   VARCHAR(45),
    PRIMARY KEY (CodSubstrato)
) ENGINE = InnoDB;


-- terreno

CREATE TABLE Terreno
(
    CodTerreno    VARCHAR(45) NOT NULL,
	ConsistenzaT    VARCHAR(45),
    PermeabilitàT   VARCHAR(45),
    PRIMARY KEY (CodTerreno)
) ENGINE = InnoDB;



-- pianta

CREATE TABLE Pianta
(
    CodPianta                    VARCHAR(45) NOT NULL,
    Nome                         VARCHAR(45) NOT NULL,
    Genere                       VARCHAR(45) NOT NULL,
    Cultivar                     VARCHAR(45) NOT NULL,
	DimensioneMax                INT(5) NOT NULL,
    Dioica                       VARCHAR(45) NOT NULL,
    Fogliame                     VARCHAR(45) NOT NULL,
    IndiceAccrescimentoRadice    INT(5) NOT NULL,
    IndiceAccrescimentoAerea     INT(5) NOT NULL,
    IndiceManutenzione           INT(5) NOT NULL,
	CodSubstrato                 VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodPianta),
	FOREIGN KEY (CodSubstrato)
        REFERENCES Substrato(CodSubstrato)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- scheda

CREATE TABLE Scheda
(
    CodScheda                    VARCHAR(45) NOT NULL,
	DimensioneS                  INT(5) NOT NULL,
	CollocazioneS                VARCHAR(45) NOT NULL,
	DimensioneVaso               INT(5),
    Prezzo                       INT(5) NOT NULL,
	CodPianta                    VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodScheda),
	FOREIGN KEY (CodPianta)
        REFERENCES Pianta(CodPianta)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;



-- contenitore 

CREATE TABLE Contenitore
(
    CodContenitore      VARCHAR(45) NOT NULL,
	LivelloIdratazione  INT(5) NOT NULL,
    DimensioneC         INT(5) NOT NULL,
    CodSubstrato        VARCHAR(45) NOT NULL,
    CodRipiano          VARCHAR(45) NOT NULL,
	CodScheda           VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodContenitore),
	FOREIGN KEY (CodSubstrato)
        REFERENCES Substrato(CodSubstrato)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodRipiano)
        REFERENCES Ripiano(CodRipiano)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodScheda)
        REFERENCES Scheda(CodScheda)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- periodo

CREATE TABLE Periodo
(
    CodPeriodo                VARCHAR(45) NOT NULL,
	Status                    VARCHAR(45) NOT NULL,
	MeseInizio                DATE NOT NULL,
    MeseFine                  DATE NOT NULL,
	CodPianta                 VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodPeriodo),
	FOREIGN KEY (CodPianta)
        REFERENCES Pianta(CodPianta)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- Intervento

CREATE TABLE Intervento
(
    CodIntervento             VARCHAR(45) NOT NULL,
	TipoIntervento            VARCHAR(45) NOT NULL,
    CodPeriodo                VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodIntervento),
	FOREIGN KEY (CodPeriodo)
        REFERENCES Periodo(CodPeriodo)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- stato

CREATE TABLE Stato
(
    CodStato                  VARCHAR(45) NOT NULL,
	DataInizio                DATE NOT NULL,
    DataFine                  DATE NOT NULL,
    Condizione                VARCHAR(45) NOT NULL,
    
    CodIlluminazione          VARCHAR(45) NOT NULL,
    CodIrrigazione            VARCHAR(45) NOT NULL,
    CodTemperatura            VARCHAR(45) NOT NULL,
    CodConcimazione           VARCHAR(45) NOT NULL,

    PRIMARY KEY (CodStato),
	FOREIGN KEY (CodIlluminazione)
        REFERENCES Illuminazione(CodIlluminazione)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodIrrigazione)
        REFERENCES Irrigazione(CodIrrigazione)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodTemperatura)
        REFERENCES Temperatura(CodTemperatura)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodConcimazione)
        REFERENCES Concimazione(CodConcimazione)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- reportdiagnostica

CREATE TABLE ReportDiagnostica
(
    CodDiagnostica            VARCHAR(45) NOT NULL,
	DataDiagnostica           DATE NOT NULL,
	CodScheda                 VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodDiagnostica),
	FOREIGN KEY (CodScheda)
        REFERENCES Scheda(CodScheda)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- ordine

CREATE TABLE Ordine
(
    CodOrdine              VARCHAR(45) NOT NULL,
	DataDiagnostica        DATE NOT NULL,
    StatoOrdine            VARCHAR(45) NOT NULL,
    Nickname               VARCHAR(45) NOT NULL,
	CodScheda              VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodOrdine),
	FOREIGN KEY (Nickname)
        REFERENCES Profilo(Nickname)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
   	FOREIGN KEY (CodScheda)
        REFERENCES Scheda(CodScheda)
        ON DELETE NO ACTION
        ON UPDATE CASCADE     
) ENGINE = InnoDB;


-- Manutenzione

CREATE TABLE Manutenzione
(
    CodManutenzione            VARCHAR(45) NOT NULL,
	Scadenza                   DATE NOT NULL,
    TipoManutenzione           VARCHAR(45) NOT NULL,
    TipoOperazione             VARCHAR(45) NOT NULL,
	CodOrdine                  VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodManutenzione),
	FOREIGN KEY (CodOrdine)
        REFERENCES Ordine(CodOrdine)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;



-- Spazio Pianta

CREATE TABLE SpazioPianta
(
    CodSpazio             VARCHAR(45) NOT NULL,
	DimensioneSP          INT(5) NOT NULL,
    Vaso                  BOOL NOT NULL,
    MaterialeVaso         VARCHAR(45),
    CodScheda             VARCHAR(45) NOT NULL,
	CodSettore            VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodSpazio),
	FOREIGN KEY (CodSettore)
        REFERENCES Settore(CodSettore)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodScheda)
        REFERENCES Scheda(CodScheda)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- compone

CREATE TABLE Compone
(
    CodSubstrato            VARCHAR(45) NOT NULL,
    CodElemento             VARCHAR(45) NOT NULL,
	PercentualeE            INT(5) NOT NULL,
    PRIMARY KEY (CodSubstrato,CodElemento),
	FOREIGN KEY (CodSubstrato)
        REFERENCES Substrato(CodSubstrato)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodElemento)
        REFERENCES Elemento(CodElemento)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- contrae

CREATE TABLE Contrae
(
    CodScheda            VARCHAR(45) NOT NULL,
    CodPatologia         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodScheda,CodPatologia),
	FOREIGN KEY (CodScheda)
        REFERENCES Scheda(CodScheda)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodPatologia)
        REFERENCES Patologia(CodPatologia)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- cura

CREATE TABLE Cura
(
    CodProdotto          VARCHAR(45) NOT NULL,
    CodPatologia         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodProdotto,CodPatologia),
	FOREIGN KEY (CodProdotto)
        REFERENCES Prodotto(CodProdotto)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodPatologia)
        REFERENCES Patologia(CodPatologia)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- contiene
CREATE TABLE Contiene
(
    CodProdotto          VARCHAR(45) NOT NULL,
    CodPrincipioAttivo         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodProdotto,CodPrincipioAttivo),
	FOREIGN KEY (CodProdotto)
        REFERENCES Prodotto(CodProdotto)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodPrincipioAttivo)
        REFERENCES PrincipioAttivo(CodPrincipioAttivo)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;

-- accerta
CREATE TABLE Accerta
(
    CodSintomo            VARCHAR(45) NOT NULL,
    CodPatologia         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodSintomo,CodPatologia),
	FOREIGN KEY (CodSintomo)
        REFERENCES Sintomo(CodSintomo)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodPatologia)
        REFERENCES Patologia(CodPatologia)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- identifica
CREATE TABLE Identifica
(
    CodDiagnostica            VARCHAR(45) NOT NULL,
    CodPatologia         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodDiagnostica,CodPatologia),
	FOREIGN KEY (CodDiagnostica)
        REFERENCES ReportDiagnostica(CodDiagnostica)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodPatologia)
        REFERENCES Patologia(CodPatologia)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- Segnala
CREATE TABLE Segnala
(
    CodDiagnostica     VARCHAR(45) NOT NULL,
    CodSintomo         VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodDiagnostica,CodSintomo),
	FOREIGN KEY (CodDiagnostica)
        REFERENCES ReportDiagnostica(CodDiagnostica)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodSintomo)
        REFERENCES Sintomo(CodSintomo)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;


-- trattamento
CREATE TABLE Trattamento
(
    CodProdotto            VARCHAR(45) NOT NULL,
    CodDiagnostica         VARCHAR(45) NOT NULL,
    Dosaggio               INT(5) NOT NULL,
    DataTrattamento        DATE NOT NULL,
    EsitoTrattamento       BOOL NOT NULL,
    PRIMARY KEY (CodDiagnostica,CodProdotto),
	FOREIGN KEY (CodDiagnostica)
        REFERENCES ReportDiagnostica(CodDiagnostica)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY (CodProdotto)
        REFERENCES Prodotto(CodProdotto)
        ON DELETE NO ACTION
        ON UPDATE CASCADE    
) ENGINE = InnoDB;

-- delimita
CREATE TABLE Delimita
(
    CodGiardino            VARCHAR(45) NOT NULL,
    IdVertice              INT NOT NULL,
    PRIMARY KEY (CodGiardino, IdVertice),
	FOREIGN KEY (CodGiardino)
        REFERENCES Giardino(CodGiardino)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY(IdVertice)
        REFERENCES Vertice(IdVertice)
		ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- Racchiude
CREATE TABLE Racchiude
(
    CodSettore            VARCHAR(45) NOT NULL,
    IdVertice              INT NOT NULL,
    PRIMARY KEY (CodSettore, IdVertice),
	FOREIGN KEY (CodSettore)
        REFERENCES Settore(CodSettore)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY(IdVertice)
        REFERENCES Vertice(IdVertice)
		ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- circoscrive

CREATE TABLE Circoscrive
(
    CodSpazio            VARCHAR(45) NOT NULL,
    IdVertice              INT NOT NULL,
    PRIMARY KEY (CodSpazio, IdVertice),
	FOREIGN KEY (CodSpazio)
        REFERENCES Spaziopianta(CodSpazio)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY(IdVertice)
        REFERENCES Vertice(IdVertice)
		ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;



-- preferisce 
CREATE TABLE Preferisce
(
    CodPianta            VARCHAR(45) NOT NULL,
    Nickname             VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodPianta, Nickname),
	FOREIGN KEY (CodPianta)
        REFERENCES Pianta(CodPianta)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY(Nickname)
        REFERENCES Profilo(Nickname)
		ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;


-- forma
CREATE TABLE Forma
(
    CodSubstrato            VARCHAR(45) NOT NULL,
    CodTerreno              VARCHAR(45) NOT NULL,
    PRIMARY KEY (CodTerreno, CodSubstrato),
	FOREIGN KEY (CodTerreno)
        REFERENCES Terreno(CodTerreno)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
	FOREIGN KEY(CodSubstrato)
        REFERENCES Substrato(CodSubstrato)
		ON DELETE NO ACTION
        ON UPDATE CASCADE
) ENGINE = InnoDB;







