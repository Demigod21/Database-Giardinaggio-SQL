INSERT INTO Illuminazione VALUES
("Ill1","0","2","indiretta"),
("Ill2","0","1","indiretta"),
("Ill3","0","0","indiretta"),
("Ill4","1","4","diretta"),
("Ill5","1","8","diretta"),
("Ill6","1","12","indiretta"),
("Ill7","2","6","diretta"),
("Ill8","2","8","diretta"),
("Ill9","2","10","diretta"),
("Ill10","2","12","diretta");

INSERT INTO Irrigazione VALUES
("Irr1","1","alto","5"),
("Irr2","1","alto","5"),
("Irr3","2","alto","5"),
("Irr4","1","medio","2"),
("Irr5","2","medio","3"),
("Irr6","3","medio","4"),
("Irr7","5","medio","10"),
("Irr8","4","basso","1"),
("Irr9","7","basso","2"),
("Irr10","15","basso","5");

INSERT INTO Temperatura VALUES
("Temp1","-10","30"),
("Temp2","0","40"),
("Temp3","10","50"),
("Temp4","-10","0"),
("Temp5","5","25"),
("Temp6","5","15"),
("Temp7","25","45"),
("Temp8","15","50"),
("Temp9","-5","5"),
("Temp10","-15","5");

INSERT INTO Concimazione VALUES
("Conc1","compost","1","10"),
("Conc2","compost","2","7"),
("Conc3","farina d'ossa","1","30"),
("Conc4","guano","3","14"),
("Conc5","concimazione verde","2","7"),
("Conc6","letame","1","7"),
("Conc7","letame","2","7"),
("Conc8","letame","3","10"),
("Conc9","pollina","1","7"),
("Conc10","farina di roccia","5","30");

INSERT INTO Patologia VALUES
("Pat1","Cocciniglia"),
("Pat2","Aleurodide"),
("Pat3","Afide"),
("Pat4","Oidio"),
("Pat5","Oziorrinco"),
("Pat6","Fumaggine"),
("Pat7","Ticchiolatura"),
("Pat8","Peronospora"),
("Pat9","Processionaria"),
("Pat10","Botrite");

INSERT INTO Sintomo VALUES
("Sin1","presenza di grandi quantità di piccoli insetti su germoglie e foglie"),
("Sin2","presenza di piccole quantità di insetti sulla pagina inferiore della foglia"),
("Sin3","ingiallimento delle foglie"),
("Sin4","presenza di melata sulle foglie"),
("Sin5","rinsecchimento delle foglie"),
("Sin6","presenza di perforazioni circolari della pagina della foglia"),
("Sin7","lesioni della foglia a forma di mezzaluna"),
("Sin8","indebolimento della pianta"),
("Sin9","presenza di macchie scure sulla foglia"),
("Sin10","caduta di foglie"),
("Sin11","presenza di nidi ragnatelosi"),
("Sin12","marcescenza di alcune parti della pianta");

INSERT INTO Sede VALUES
("Sed1","EMPOLI","via Einstein 9","Empoli","10"),
("Sed2","SAN MINIATO","via Puccini 13","San Miniato","5"),
("Sed3","PONTEDERA","via Volta 27","Pontedera","3"),
("Sed4","LIVORNO1","piazza Martiri della Libertà 5","Livorno","6"),
("Sed5","LIVORNO2","lungomare Buonarroti 45","Livorno","7"),
("Sed6","VIAREGGIO","via Casalvecchio 9","Viareggio","15"),
("Sed7","PISA1","via Mazzini 65bis","Pisa","8"),
("Sed8","PISA2","via Napoleone 34","Pisa","7"),
("Sed9","PISA3","via M.L.King 30","Pisa","6"),
("Sed10","PRATO","via Italia 15","Prato","19");

INSERT INTO Serra VALUES
("Ser1","MONTELUPO","100","0","9","120","50","via Dal Canto 23","Montelupo","Sed1"),
("Ser2","PONTEAELSA","150","0","10","100","100","via Alinghieri 56","Ponte A Elsa","Sed2"),
("Ser3","ROMITO","90","0","6","80","40","via Pucci 28","Pontedera","Sed3"),
("Ser4","ARDENZA","80","0","5","70","45","via Galimberti 67","Ardenza","Sed4"),
("Ser5","CALAMBRONE","100","0","7","90","50","via Rospicciana 43","Livorno","Sed5"),
("Ser6","COLLESALVETTI","110","0","5","120","45","via Foscolo 13","Collesalvetti","Sed5"),
("Ser7","TORREDELLAGO","85","0","6","110","30","via della Miseria 23","Torre del lago","Sed6"),
("Ser8","LARI","105","0","6","90","50","piazza del castello","Lari","Sed7"),
("Ser9","CAPANNOLI","80","0","5","90","45","via Falcone e Borsellino 49","Capannoli","Sed7"),
("Ser10","PISA","150","0","9","120","50","via del Parruccone 74","Pisa","Sed8"),
("Ser11","FAUGLIA","100","0","8","100","45","via Faletti 6","Fauglia","Sed9"),
("Ser12","CALENZANO","95","0","6","105","50","via Giorgi 37","Prato","Sed10");

INSERT INTO Sezione VALUES
("Sez1","PianteGrasse","20","0","30","60","Ser1"),
("Sez2","PianteTropicali","22","0","40","90","Ser2"),
("Sez3","PianteAltaQuota","25","0","10","70","Ser3"),
("Sez4","PianteGrasse","19","0","30","60","Ser4"),
("Sez5","PianteMediterraneo","18","0","25","80","Ser5"),
("Sez6","PianteAltaQuota","13","0","10","70","Ser6"),
("Sez7","PianteMediterraneo","17","0","25","80","Ser7"),
("Sez8","PianteOrientali","12","0","30","80","Ser8"),
("Sez9","PianteDaFrutta","18","0","30","85","Ser9"),
("Sez10","PianteGrasse","15","0","30","60","Ser10"),
("Sez11","PianteAltaQuota","15","0","10","75","Ser11"),
("Sez12","PianteTropicali","16","0","40","90","Ser12"),
("Sez13","PianteOrientali","17","0","45","80","Ser1");

INSERT INTO Ripiano VALUES
("Rip1","alto","Sez2"),
("Rip2","alto","Sez3"),
("Rip3","alto","Sez5"),
("Rip4","alto","Sez6"),
("Rip5","medio","Sez7"),
("Rip6","medio","Sez8"),
("Rip7","medio","Sez9"),
("Rip8","medio","Sez11"),
("Rip9","basso","Sez1"),
("Rip10","basso","Sez4"),
("Rip11","basso","Sez10"),
("Rip12","alto","Sez12"),
("Rip13","medio","Sez13");

INSERT INTO Elemento VALUES
("Ele1","Azoto"),
("Ele2","Fosforo"),
("Ele3","Potassio"),
("Ele4","Calcio"),
("Ele5","Magnesio"),
("Ele6","Ferro"),
("Ele7","Zolfo"),
("Ele8","Sodio"),
("Ele9","Cloro"),
("Ele10","Carbonio");

INSERT INTO PrincipioAttivo VALUES
("PrAt1","olio minerale","50"),
("PrAt2","acefale","40"),
("PrAt3","deltametrina","30"),
("PrAt4","zolfo","20"),
("PrAt5","piretro","20"),
("PrAt6","cipermetrina","35"),
("PrAt7","penconazolo","25"),
("PrAt8","tioftalimmide","15"),
("PrAt9","diflubenzuron","45"),
("PrAt10","azoto","50");

INSERT INTO Immagine VALUES
("imm1","insetti_piccoli.gif","Sin1"),
("imm2","foglia_con_insetti.jpg","Sin2"),
("imm3","foglia_ingiallita.jpg","Sin3"),
("imm4","melata_su_foglia.jpg","Sin4"),
("imm5","foglia_rinsecchita.png","Sin5"),
("imm6","foglia_mangiata.jpg","Sin6"),
("imm7","macchie_scure_su_foglia.jpg","Sin9"),
("imm8","pianta_indebolita.jpg","Sin8"),
("imm9","pianta_con_foglie_cadute.jpg","Sin10"),
("imm10","nido_ragnateloso.jpg","Sin11");

INSERT INTO Prodotto VALUES
("pro1","Olio bianco","0","versare a mano","selettivo","2000-06-21","2000-09-20"),
("pro2","Piretro Actigreen Bio","0","nebulizzazione","ampio spettro","2000-12-12","2000-01-01"),
("pro3","Piretroide MondoVerde","0","irrigazione","ampio spettro","2000-03-21","2000-09-20"),
("pro4","Zapi Zolfo Ramato","7","nebulizzazione","ampio spettro","2000-09-21","2000-06-20"),
("pro5","Decis Jet","0","irrigazione","ampio spettro","2000-03-21","2000-09-20"),
("pro6","Copyr Rameico","14","nebulizzazione","ampio spettro","2000-06-21","2000-09-20"),
("pro7","Cimoxanil","0","irrigazione","selettivo","2000-12-12","2000-01-01"),
("pro8","Urgo Aftas","0","irrigazione","ampio spettro","2000-09-21","2000-06-20"),
("pro9","Ciron","0","sparigimento a mano","selettivo","2000-12-12","2000-01-01"),
("pro10","Teldor Plus Bayer","0","nebulizzazione","selettivo-","2000-09-21","2000-06-20");

INSERT INTO Profilo VALUES
("Mezzaluna","Laura","Ciompi","laura.ciompi@gmail.com","lauraa2000","nome di tua madre","Maria","via Guccini 34","Pontedera","0"),
("PolliceVerde","Danilo","Seclì","dani.secli@gmail.com","daniwebdesigner","canzone preferita?","master blaster","via Marzocchi 67","Pisa","0"),
("AerdnaKiss","Andrea","Salvetti","a.salvetti.g843@gmail.com","aerdnapsw00","como se llama esta cancion?","Salsa Tequila","via Pucci 28","Pontedera","0"),
("David69","Davide","Falcone","davide.falcone276@gmail.com","falcoking56","compagno di progetto?","andrea","via dei fabbri 78","Capannoli","0"),
("Cresch","Mirco","Capelli","cappe70@gmail.com","elcappepsw4","cognome di mia nonna?","Sartini","via Dini 67","Firenze","0"),
("SillyMe","Marta","Morello","xmarta90x@gmail.com","martolina90","nome del mio boyfriend?","marco","via Einstein 5","Lucca","0"),
("MartinV.","Martino","Ciocchi","ciocchiciocchi@gmail.com","pswdatabase","mese di nascita di tua sorella?","marzo","via Brigate Rosse 23","Viareggio","0"),
("Tribalista","Gloria","Simoneschi","glorietta45@gmail.com","gloxdxd","targa della macchina?","hj 905 ff","via Bomarzo 35","Empoli","0"),
("Mylo3","Lisa","Erasmo","lisa.erasmo@gmail.com","lisalisalisa222","data di nascita di babbo?","22-12-1954","via Carducci 12","Livorno","0"),
("Galantis","Marco","Lampi","lampi.marco.dj@gmail.com","cshkerwrgrr","canzone preferita?","Hang up","via S.Francesco 36","Prato","0");

INSERT INTO Thread VALUES
("th1","http://www.mygardensnc.com/it/home/#/blog/thread2548625","Salve a tutti ragazzi, sono nuovo qui nel blog e sul sito. volevo fare un ordine ma prima volevo sapere un pò in generale come funzione e la qualità del servizio.. non ho mai ordinato un giardino online e ho un po paura... Qualche impressione da chi ha già provato? grazie a tutti!!","Mezzaluna"),
("th2","http://www.mygardensnc.com/it/home/#/blog/thread5874562","Buonasera, dopo una forte grandinata la mia pianta di pomodori è veramente distrutta.. non so che fare.. menomale qualche foglia è rimasta. che dite potrà sopravvivere!? o è meglio ordinarle un'altra subito?","PolliceVerde"),
("th3","http://www.mygardensnc.com/it/home/#/blog/thread4687656","Ehi gente, volevo informarmi a nome della direzione che sono stati inseriti nelle liste online e naturalmente nelle serre nuove migliaia tipi di profumatissimi fiori.. diamo un bel benvenuto alla primavera con un pò di colore e profumo!!","AerdnaKiss"),
("th4","http://www.mygardensnc.com/it/home/#/blog/thread1587562","Ragazzi devo andare in vacanza due settimane tra un mese e non so come fare per annaffiare le piante nel mio giradinetto.. non ho nessuno a cui chiedere.. consigli su come risolvere questo insormontabile problema?","David69"),
("th5","http://www.mygardensnc.com/it/home/#/blog/thread2355574","Ciaone a tuttiiii finalmente è sbocciato il fiore della mia pianta grassa!! è bellissimooo ho scattato anche alcune foto sto cercando il modo di caricarle appena lo trovo vi scrivo","Cresch"),
("th6","http://www.mygardensnc.com/it/home/#/blog/thread9834712","Oggi finalmente ho potuto leggere un po di pagine stesa sotto la fresca ombra del mio nuovo salice. sono contentissima.. è da mesi che aspettavo questo momento. vi conisgli di prendere anche voiun salicee","SillyMe"),
("th7","http://www.mygardensnc.com/it/home/#/blog/thread1154865","Gente buongiorno. Stamani gironzolando per il giardino ho trovato sui boccioli delle mie rose tantissimi piccoli insettini. non so cosa siano ma credo niente di buono. consigli su cosa potrebbero essere e come levarli di lì??","MartinV."),
("th8","http://www.mygardensnc.com/it/home/#/blog/thread8542356","Salve giardinieriii ma che bel blog è questooo!! ho appena finito l'ordine di piante per il mio nuovo giardino.. sto aspettando che arrivi la conferma. fra quanto arriveranno a piantare tutto??","Tribalista"),
("th9","http://www.mygardensnc.com/it/home/#/blog/thread8569244","Ehii oggi per sbaglio mentre giocavo con le mie amiche nel giardino di casa la palla ha schiacciato una fioriera con tanti fiori dentro... spero non moriranno. qualcuno sa come fare se vedo che muoiono?? aiutatemi mamma mi uccidee sennòò","Mylo3"),
("th10","http://www.mygardensnc.com/it/home/#/blog/thread8569524","ragazzi la mia siepe è infestata di vespe. come faccio? ho cercato i nidi ma non li vedo.. prodotti per rimuoverle in fretta? ","Galantis");

INSERT INTO Risposta VALUES
("ris1","1","2015-12-03","sisi puoi fidarti al 100%!! io è due anni che ho un giardino interamente ordinato qui e devo dire che anche il servizio di mautenzione è ottimo","PolliceVerde","th1"),
("ris2","3","2015-12-22","dipende  se il fusto è danneggiato o no.. per quello che costano puoi anche ordinarli nuovi..","Mezzaluna","th2"),
("ris3","5","2016-01-29","che bellooo.. okay appena posso ci faccio un salto!","MartinV.","th3"),
("ris4","4","2016-02-13","cerca nel servizio di manutenzione o chiama l'azienda sul numero che trovi nella homepage. di solito fanno anche questo tipo di servizi extra.","Cresch","th4"),
("ris5","4","2016-04-23","a me è capitato uguale. ho chiamato e per un prezzo irrisorio ogni due giorni passavano col loro forgoncino-autobotte ed annaffiavano tutto. basta chiamarli","Tribalista","th4"),
("ris6","2","2016-06-05","che fortunaaa!! a me il salice non lo faceva scegliere per problemi di ore di sole e temperatura.. ufff","SillyMe","th6"),
("ris7","4","2016-06-11","molto probabilmente si tratta di afidi.. puoi trovare dei prodotti apposta dal fioraio sennò vai su manutenzione col tuo codice della pianta e vengono quelli del sito e fanno tutto loro.","Tribalista","th7"),
("ris8","3","2016-08-28","dipende da dove abiti.. in genere se sei vicino ad una delle loro serre la consegna è veloce.. uno due giorni.. sennò fino una settimana anche se sei più lontana","Mylo3","th8"),
("ris9","2","2016-09-01","ahahahah piccola non ti preoccupare!! lo stelo dei fiori è fatto apposta per ricevere scossoni ed essere un po' strapazzate... in genere dal vento.. la prossima volta giocate più distanti dalle fioriere della mamma!","Galantis","th9"),
("ris10","1","2016-09-11","per le vespe cosi io dovetti potare l'intera siepe!! pagai un sacco per quelle maledette bestie pungenti però ora posso stare in giardino snza  problemi.","Mezzaluna","th10");

INSERT INTO Giardino VALUES
("gia1","Mezzaluna"),
("gia2","PolliceVerde"),
("gia3","AerdnaKiss"),
("gia4","David69"),
("gia5","Cresch"),
("gia6","SillyMe"),
("gia7","MartinV."),
("gia8","Tribalista"),
("gia9","Mylo3"),
("gia10","Galantis");

INSERT INTO Progetto VALUES
("pro1","1500","5","gia1"),
("pro2","2000","3","gia1"),
("pro3","1000","2","gia2"),
("pro4","900","4","gia3"),
("pro5","1200","2","gia4"),
("pro6","3200","4","gia5"),
("pro7","550","3","gia6"),
("pro8","4000","3","gia7"),
("pro9","2500","4","gia8"),
("pro10","1300","5","gia9");

INSERT INTO Settore VALUES
("set1","6","Nord","piena terra","gia1"),
("set2","8","Nord","pavimentato","gia2"),
("set3","4","Nord","piena terra","gia3"),
("set4","4","Nord","piena terra","gia4"),
("set5","12","Sud","pavimentato","gia3"),
("set6","16","Sud","piena terra","gia5"),
("set7","10","Sud","pavimentato","gia6"),
("set8","7","Ovest","piena terra","gia7"),
("set9","9","Ovest","pavimentato","gia8"),
("set10","10","Est","no piante","gia9");

INSERT INTO Vertice VALUES
("1","0","0"),
("2","0","100"),
("3","100","100"),
("4","100","0"),
("5","0","350"),
("6","250","350"),
("7","250","0"),
("8","0","200"),
("9","150","0"),
("10","150","200"),
("11","0","300"),
("12","300","0"),
("13","300","300"),
("14","200","50"),
("15","500","500"),
("16","0","50"),
("17","50","0"),
("18","50","50"),
("19","0","10"),
("20","60","0"),
("21","30","40"),
("22","1","0"),
("23","0","1"),
("24","1","1"),
("25","2","0"),
("26","0","2"),
("27","2","2"),
("28","3","1"),
("29","1","3");

INSERT INTO Substrato VALUES
("sub1","sabbioso","5","alta"),
("sub2","laterico","6","alta"),
("sub3","sabbioso","7","alta"),
("sub4","argilloso","4","media"),
("sub5","argilloso","6","media"),
("sub6","laterico","6","media"),
("sub7","sabbioso","8","media"),
("sub8","argilloso","7","bassa"),
("sub9","argilloso","5","bassa"),
("sub10","laterico","4","bassa");

INSERT INTO Terreno VALUES
("ter1","sabbioso","alta"),
("ter2","laterico","alta"),
("ter3","sabbioso","alta"),
("ter4","argilloso","media"),
("ter5","argilloso","media"),
("ter6","laterico","media"),
("ter7","sabbioso","media"),
("ter8","argilloso","bassa"),
("ter9","laterico","bassa"),
("ter10","argilloso","bassa");

INSERT INTO Pianta VALUES
("pia1","Pitosforo","Pittosporum","tobira","2","si","sempreverde","4","6","0","sub1"),
("pia2","Mimosa","Acacia","dealbata","10","no","sempreverde","9","9","0","sub2"),
("pia3","Limone","Citrus","limon","4","no","caducifoglie","4","5","0","sub3"),
("pia4","Palma nana","Chamaerops","humilis","2","no","sempreverde","1","4","0","sub4"),
("pia5","Viburno","Viburnum","tinus","2","no","sempreverde","2","5","0","sub6"),
("pia6","Camelia","Camellia","sinensis","2","no","sempreverde","1","2","0","sub7"),
("pia7","Azalea","Rhododendron","hirsutum","1","no","sempreverde","1","1","0","sub5"),
("pia8","Photinia","Photinia","serrulata","4","no","sempreverde","2","4","0","sub8"),
("pia9","Rosa","Rosa","canina","2","no","caducifoglie","5","5","0","sub10"),
("pia10","Pomodoro","Solanum","lycopersicum","3","no","caducifoglie","2","6","0","sub9");

INSERT INTO Scheda VALUES
("sch1","3","terra",null ,"20","pia1"),
("sch2","8","terra",null ,"45","pia2"),
("sch3","3","vaso","50","15","pia3"),
("sch4","1","terra",null ,"35","pia4"),
("sch5","1","terra",null ,"10","pia5"),
("sch6","1","vaso","15","5","pia6"),
("sch7","1","vaso","15","15","pia7"),
("sch8","3","vaso","15","5","pia8"),
("sch9","2","vaso","15","20","pia9"),
("sch10","1","vaso","25","5","pia10"),
("sch11","2","vaso","50","10","pia10");

INSERT INTO Contenitore VALUES
("con1","2","300","sub1","rip1","sch1"),
("con2","4","250","sub2","rip2","sch2"),
("con3","4","50","sub3","rip3","sch3"),
("con4","3","300","sub3","rip4","sch4"),
("con5","2","150","sub5","rip5","sch5"),
("con6","5","10","sub6","rip6","sch6"),
("con7","5","5","sub7","rip7","sch7"),
("con8","7","5","sub8","rip8","sch9"),
("con9","10","20","sub9","rip9","sch10"),
("con10","9","50","sub10","rip10","sch10");

INSERT INTO Periodo VALUES
("per1","fioritura","2000-03-01","2000-05-01","pia3"),
("per2","fioritura","2000-03-01","2000-04-01","pia10"),
("per3","fioritura","2000-02-01","2000-03-01","pia8"),
("per4","fruttificazione","2000-04-01","2000-05-01","pia1"),
("per5","fioritura","2000-04-01","2000-05-01","pia6"),
("per6","fioritura","2000-04-01","2000-06-01","pia7"),
("per7","fioritura","2000-02-01","2000-04-01","pia2"),
("per8","fruttificazione","2000-06-01","2000-09-01","pia3"),
("per9","fruttificazione","2000-05-01","2000-06-01","pia10"),
("per10","fioritura","2000-07-01","2000-08-01","pia9");

INSERT INTO Intervento VALUES
("int1","potatura","per6"),
("int2","potatura","per7"),
("int3","potatura","per4"),
("int4","potatura","per9"),
("int5","concimazione","per10"),
("int6","rinvaso","per1"),
("int7","rinvaso","per2"),
("int8","rinvaso","per3"),
("int9","trattamento chimico","per8"),
("int10","trattamento chimico","per1");

INSERT INTO Stato VALUES
("sta1","2000-01-01","2000-12-01","vegetativo","Ill1","Irr10","Temp5","Conc1"),
("sta2","2000-03-01","2000-10-01","vegetativo","Ill2","Irr9","Temp4","Conc2"),
("sta3","2000-03-01","2000-09-01","vegetativo","Ill3","Irr8","Temp8","Conc3"),
("sta4","2000-02-01","2000-09-01","vegetativo","Ill4","Irr7","Temp7","Conc4"),
("sta5","2000-01-01","2000-12-01","vegetativo","Ill5","Irr6","Temp6","Conc6"),
("sta6","2000-05-01","2000-10-01","vegetativo","Ill6","Irr5","Temp10","Conc5"),
("sta7","2000-04-01","2000-11-01","vegetativo","Ill7","Irr4","Temp9","Conc7"),
("sta8","2000-11-01","2000-01-01","riposo","Ill8","Irr3","Temp3","Conc8"),
("sta9","2000-12-01","2000-01-01","riposo","Ill9","Irr2","Temp2","Conc9"),
("sta10","2000-10-01","2000-02-01","riposo","Ill10","Irr1","Temp1","Conc10");

INSERT INTO ReportDiagnostica VALUES
("red1","2015-06-13","sch1"),
("red2","2015-06-17","sch2"),
("red3","2015-10-22","sch3"),
("red4","2015-12-25","sch4"),
("red5","2016-01-07","sch5"),
("red6","2016-03-23","sch6"),
("red7","2016-05-08","sch7"),
("red8","2016-05-19","sch8"),
("red9","2016-06-24","sch9"),
("red10","2016-09-05","sch10");

INSERT INTO Ordine VALUES
("ord1","2015-10-20","evaso","Mezzaluna","sch1"),
("ord2","2015-12-12","evaso","PolliceVerde","sch2"),
("ord3","2015-12-29","evaso","David69","sch3"),
("ord4","2016-02-23","pendente","Cresch","sch4"),
("ord5","2016-05-22","spedito","PolliceVerde","sch5"),
("ord6","2016-07-12","in processazione","SillyMe","sch6"),
("ord7","2016-08-17","in preparazione","MartinV.","sch11"),
("ord8","2016-08-23","spedito","Tribalista","sch8"),
("ord9","2016-09-06","spedito","Mylo3","sch9"),
("ord10","2016-09-10","in processazione","Galantis","sch10");

INSERT INTO Manutenzione VALUES
("manu1","2016-09-09","su richiesta","potatura","ord1"),
("manu2","2016-12-23","su richiesta","concimazione","ord2"),
("manu3","2016-03-23","su richiesta","rinvaso","ord3"),
("manu4","2016-09-01","programmata","potatura","ord4"),
("manu5","2016-04-01","programmata","concimazione","ord5"),
("manu6","2016-06-01","automatica","rinvaso","ord6"),
("manu7","2016-07-01","automatica","trattamento chimico","ord7"),
("manu8","2016-08-01","automatica","potatura","ord8"),
("manu9","2016-09-12","autonoma","potatura","ord9"),
("manu10","2016-01-06","autonoma","rinvaso","ord10");

INSERT INTO SpazioPianta VALUES
("spa1","100","0",NULL,"sch1","set1"),
("spa2","150","0",NULL,"sch2","set2"),
("spa3","50","0",NULL,"sch3","set3"),
("spa4","100","1","terracotta","sch4","set4"),
("spa5","100","1","plastica","sch5","set5"),
("spa6","20","1","plastica","sch6","set6"),
("spa7","20","1","terracotta","sch7","set7"),
("spa8","20","1","plastica","sch8","set8"),
("spa9","30","0",NULL,"sch9","set9"),
("spa10","50","1","terracotta","sch10","set9");

INSERT INTO Compone VALUES
("sub1","Ele2","10"),
("sub2","Ele4","20"),
("sub3","Ele6","15"),
("sub4","Ele8","35"),
("sub5","Ele3","40"),
("sub6","Ele5","20"),
("sub7","Ele7","5"),
("sub8","Ele9","10"),
("sub9","Ele10","25"),
("sub10","Ele1","10");

INSERT INTO Contrae VALUES
("sch1","Pat1"),
("sch2","Pat2"),
("sch3","Pat3"),
("sch4","Pat4"),
("sch5","Pat5"),
("sch6","Pat6"),
("sch7","Pat7"),
("sch8","Pat8"),
("sch9","Pat9"),
("sch10","Pat10");

INSERT INTO Cura VALUES
("pro1","Pat1"),
("pro2","Pat2"),
("pro3","Pat2"),
("pro4","Pat4"),
("pro5","Pat5"),
("pro6","Pat6"),
("pro7","Pat7"),
("pro8","Pat8"),
("pro9","Pat9"),
("pro10","Pat10");

INSERT INTO Contiene VALUES
("pro1","PrAt1"),
("pro2","PrAt2"),
("pro3","PrAt3"),
("pro4","PrAt4"),
("pro5","PrAt5"),
("pro6","PrAt6"),
("pro7","PrAt7"),
("pro8","PrAt8"),
("pro9","PrAt9"),
("pro10","PrAt10");

INSERT INTO Accerta VALUES
("Sin1","Pat1"),
("Sin2","Pat2"),
("Sin3","Pat2"),
("Sin4","Pat3"),
("Sin7","Pat5"),
("Sin8","Pat6"),
("Sin10","Pat7"),
("Sin5","Pat8"),
("Sin11","Pat9"),
("Sin12","Pat10");

INSERT INTO Identifica VALUES
("red1","Pat1"),
("red2","Pat2"),
("red3","Pat3"),
("red4","Pat4"),
("red5","Pat5"),
("red6","Pat6"),
("red7","Pat7"),
("red8","Pat8"),
("red9","Pat9"),
("red10","Pat10");

INSERT INTO Segnala VALUES
("red1","Sin1"),
("red2","Sin2"),
("red3","Sin3"),
("red4","Sin4"),
("red5","Sin7"),
("red6","Sin8"),
("red7","Sin10"),
("red8","Sin5"),
("red9","Sin11"),
("red10","Sin12");

INSERT INTO Trattamento VALUES
("pro1","red1","10","2015-07-23","1"),
("pro2","red2","20","2015-08-12","1"),
("pro3","red3","50","2015-12-22","1"),
("pro4","red4","5","2016-01-09","1"),
("pro5","red5","15","2016-02-13","0"),
("pro6","red6","25","2016-04-02","0"),
("pro7","red7","35","2016-05-14","0"),
("pro8","red8","100","2016-05-20","1"),
("pro9","red9","2000","2016-07-22","1"),
("pro10","red10","55","2016-09-10","0");

INSERT INTO Delimita VALUES 
("gia1","1"),
("gia1","2"),
("gia1","3"),
("gia1","4"),
("gia3","1"),
("gia3","5"),
("gia3","6"),
("gia3","7"),
("gia10","1"),
("gia10","8"),
("gia10","9"),
("gia10","10");

INSERT INTO Racchiude VALUES
("set1","1"),
("set1","16"),
("set1","17"),
("set1","18"),
("set3","1"),
("set3","2"),
("set3","18"),
("set3","4"),
("set5","1"),
("set5","19"),
("set5","20"),
("set5","21");


INSERT INTO Circoscrive VALUES
("spa1","1"),
("spa1","22"),
("spa1","23"),
("spa1","24"),
("spa2","1"),
("spa2","25"),
("spa2","26"),
("spa2","27"),
("spa9","1"),
("spa9","28"),
("spa9","29");

INSERT INTO Preferisce VALUES
("pia1","Mezzaluna"),
("pia2","PolliceVerde"),
("pia3","David69"),
("pia4","Cresch"),
("pia4","Mezzaluna"),
("pia5","SillyMe"),
("pia6","MartinV."),
("pia8","Tribalista"),
("pia9","Mylo3"),
("pia10","Galantis");

INSERT INTO Forma VALUES
("sub1","ter1"),
("sub2","ter2"),
("sub3","ter3"),
("sub4","ter4"),
("sub5","ter5"),
("sub6","ter6"),
("sub7","ter7"),
("sub8","ter8"),
("sub9","ter9"),
("sub9","ter10");


