    -- Datu ievietošana tabulās

-- Noliktavas( Numurs, Nosaukums, Adrese)
INSERT INTO Noliktavas VALUES
    (0, 'Ofiss', 'Rāznas 28B, Rīga, LV2110'),
    (1, '1.Noliktava', 'Rāznas 28B, Rīga, LV2110'),
    (2, '2.Noliktava', 'Rāznas 28C, Rīga, LV2110'),
    (3, '3.Noliktava', 'Gruzdīši, Līči, Rīgas nov., LV3017')
GO

-- Darbinieki( (Auto-ID), Vards, Uzvards, Mob_Nr, Amats, Darbavieta)
INSERT INTO Darbinieki VALUES
    ('Artūrs', 'Gruzdenis', '+37122113344', 'Direktors', 0),
    ('Juris', 'Ivanovs', '+37122209876', 'Tirdzniecības Vadītājs', 0),
    ('Laima', 'Kalniņa', '+37123256789', 'Klientu Menedžeris', 0),
    ('Andris', 'Ozols', '+37125432167', 'Klientu Menedžeris', 0),
    ('Maija', 'Petrova', '+37127654321', 'Klientu Menedžeris', 0),
    ('Arturs', 'Bergs', '+37129876543', 'Noliktavas Vadītājs', 1),
    ('Edgars', 'Reinis', '+37121230987', 'Noliktavas Pārzinis', 1),
    ('Zane', 'Eglīte', '+37123345678', 'Noliktavas Pārzinis', 1),
    ('Elza', 'Kuzmina', '+37124567890', 'Noliktavas Vadītājs', 2),
    ('Raimonds', 'Sproģis', '+37126789012', 'Noliktavas Pārzinis', 2),
    ('Agnese', 'Vilka', '+37128901234', 'Noliktavas Pārzinis', 2),
    ('Reinis', 'Grīnbergs', '+37121098765', 'Noliktavas Vadītājs', 3),
    ('Jānis', 'Liepiņš', '+37123123456', 'Noliktavas Pārzinis', 3),
    ('Juris', 'Krūmiņš', '+37128876543', 'Noliktavas Pārzinis', 3)
GO

-- Piegadataji( ID, Nosaukums, Adrese, KontaNr, RegistracijasNr)
INSERT INTO Piegadataji VALUES
    ('citr95', 'Citronex', 'Ul. Przemysłowa 10, 30-701 Kraków, Poland', 'PL785634291029384', '9587336214'),
    ('frta83', 'Frutitalia', 'Via Roma 123, 00100 Roma, Italy', 'IT109283746576829', '29031586471'),
    ('espf78', 'España Frutas', 'Calle Gran Vía 5, 28013 Madrid, Spain', 'ES495683720928345', 'E763528941'),
    ('grli02', 'Green Leaf Imports', '123 Green Leaf Street, London, UK', 'GB982736453729103', '87264315'),
    ('frut24', 'FruitExpress', '456 Orchard Avenue, Berlin, Germany', 'DE123456789012345', 'G12345678'),

    ('vegw20', 'VeggieWorld', '789 Green Street, Paris, France', 'FR234567890123456', '87654321'),
    ('citr65', 'CitrusGrove Ltd', '101 Lemon Lane, Valencia, Spain', 'ES345678901234567', 'E98765432'),
    ('appl45', 'AppleHarvest GmbH', '321 Apple Street, Vienna, Austria', 'AT456789012345678', '654321098'),
    ('berr75', 'BerryBounty', '555 Strawberry Road, Rome, Italy', 'IT567890123456789', '54321098765'),
    ('bait13', 'Baltic Fruits OU', '3 Liivalaia Street, Tallinn, Estonia', 'EE135792468024681', '24581357'),

    ('gefl97', 'Green Fields Ltd', '6 Vabaduse Avenue, Tartu, Estonia', 'EE246813579024681', '21357902'),
    ('laha85', 'Latvian Harvest SIA', '9 Kalku Street, Riga, Latvia', 'LV135792468024681', '24687357'),
    ('babe92', 'Baltic Berries LLC', '12 Lielupe Avenue, Jurmala, Latvia', 'LV246813579024681', '91351902'),
    ('liro99', 'Lithuanian Agro UAB', '15 Gedimino Avenue, Vilnius, Lithuania', 'LT135792468024681', '24081357'),
    ('baeg14', 'Baltic Vegetables AS', '18 Laisves Avenue, Kaunas, Lithuania', 'LT246813579024681', '99357902'),

    ('grfr19', 'Greek Fresh Ltd', '21 Ermou Street, Athens, Greece', 'GR135792468024681', '24651357'),
    ('mdod15', 'Mediterranean Foods SA', '14 Mitropoleos Street, Thessaloniki, Greece', 'GR246813579024681', '91457902'),
    ('egfr03', 'Egyptian Fruits LLC', '25 Tahrir Square, Cairo, Egypt', 'EG135792468024681', '24881357'),
    ('nivo12', 'Nile Valley Produce Co', '8 Nile Street, Luxor, Egypt', 'EG246813579024681', '91357902'),
    ('hecu00', 'Sahel Agriculture Ltd', '12 Corniche Avenue, Alexandria, Egypt', 'EG357924680246813', '35792468'),

    ('most16', 'Moroccan Harvest SARL', '4 Hassan II Avenue, Casablanca, Morocco', 'MA135792468024681', '24681357'),
    ('pies88', 'Polish Veggies Sp. z o.o.', '25 Grzybowa Street, Warsaw, Poland', 'PL135792468024681', '8923674051'),
    ('czve93', 'Czech Vegetable Trading s.r.o.', '18 Zelená Avenue, Prague, Czech Republic', 'CZ246813579024681', '84572361'),
    ('hutr95', 'Hungarian Harvest Kft.', '30 Paprika Square, Budapest, Hungary', 'HU135792468024681', '38264715'),
    ('rofr00', 'Romanian Fruits SRL', '14 Strada Mărului, Bucharest, Romania', 'RO246813579024681', '72589461'),

    ('samr21', 'Amazon Fruit Exporters', '123 Amazonas Avenue, Manaus, Brazil', 'BR135792468024681', '486321907'),
    ('mexf22', 'Mexican Fresh Produce SA de CV', '456 Mango Street, Mexico City, Mexico', 'MX246813579024681', '382974615'),
    ('czfr23', 'Czech Fruit Imports s.r.o.', '10 Cherry Lane, Prague, Czech Republic', 'CZ135792468024681', '369215847'),
    ('hupr24', 'Hungarian Produce Ltd', '15 Pear Lane, Budapest, Hungary', 'HU246813579024681','57491328'),
    ('plvg25', 'Polish Veggie Grocers Sp. z o.o.', '20 Vegetable Avenue, Warsaw, Poland', 'PL135792468024681', '6715982403');
GO
INSERT INTO Piegadataji (ID, Nosaukums, Adrese) VALUES -- noliktavas iekšējiem pārvietojumiem 
    ('noli01', '1.Noliktava', 'Rāznas 28B, Rīga, LV2110'),
    ('noli02', '2.Noliktava', 'Rāznas 28C, Rīga, LV2110'),
    ('noli03', '3.Noliktava', 'Gruzdīši, Līči, Rīgas nov., LV3017')
GO

-- Klienti( ID, Nosaukums, RegistracijasNr, KontaNr, MenedzerisID(1000-1004)) 
INSERT INTO Klienti VALUES
    ('sril01', 'SurimiLV', '12346870915', 'LV012200221234562', 1001),
    ('srio03', 'SurimiOU', '18493567', 'EE012200221234562', 1001),
    ('srit99', 'SurimiLT', '183456789', 'LT998765432112345', 1001),
    ('miav98', 'MinimaLV', '98753421018', 'LV982234234567896', 1002),
    ('mial00', 'MinimaLT', '987652341', 'LT445678901234567', 1002),

    ('miao02', 'MinimaOU', '87624531', 'EE982234234567896', 1002),
    ('prio92', 'PrismaOU', '38472691', 'EE445678901234567', 1002),
    ('selv05', 'Selver', '384765734', 'LT556789012345678', 1002),
    ('iklt97', 'Iki LT', '502317876', 'LT334567890123456', 1002),
    ('mego96', 'Mego', '69781543545', 'LV445678901234567', 1003),

    ('topp02', 'TOP', '38476534522', 'LV775643222198765', 1003),
    ('norf85', 'Norfa', '50234716', 'EE775643222198765', 1003),
    ('lilv20', 'Lidl LV', '50231787651', 'LV889043217654312', 1003),
    ('lilt01', 'Lidl LT', '238957146', 'LT117654321234567', 1003),
    ('liou94', 'Lidl OU', '69584713', 'EE889043217654321', 1003),

    ('ambe90', 'Amber Market', '69781543570', 'LV332234562198765', 1003),
    ('balb03', 'Baltic Bazaar', '23892547', 'EE332234562198765', 1004),
    ('notr04', 'Northern Treasures Mart', '47291863', 'EE117654321234567', 1004),
    ('vege89', 'Vegelog', '61928375', 'EE334567890123456', 1004),
    ('balg98', 'Baltic Green Stores', '619283749', 'LT332234562198765', 1004),

    ('ogle99', 'OG Elektra', '69584723', 'EE556789012345678', 1004),
    ('jela96', 'Jelgavas Augļi', '23895714687', 'LV775643222198765', 1004),
    ('balf05', 'BalticFreshFruits', '472916382', 'LT889043217654321', 1004),
    ('ault85', 'Augma LT', '695817235', 'LT982234234567896', 1005),
    ('aulv96', 'Augma LV', '61928374923', 'LV117654321234567', 1005),

    ('skyy00', 'Sky', '47291638204', 'LV334567890123456', 1005),
    ('bama87', 'BaltMart', '28103759248', 'LV556789012345678', 1005),
    ('riva92', 'Rivona', '281037592', 'LT998765432112345', 1005),
    ('karl88', 'Karlskroona', '695817232', 'LT012200221234562', 1005),
    ('frui85', 'FruitXpress', '28103759', 'EE998765432112345', 1005)
GO
INSERT INTO Klienti (ID, Nosaukums, MenedzerisID) VALUES -- noliktavas iekšējiem pārvietojumiem
    ('noli01', '1.Noliktava', 1006),
    ('noli02', '2.Noliktava', 1009),
    ('noli03', '3.Noliktava', 1012) 
GO
-- KlientuAdreses( ID, Adrese, KlientaID)
INSERT INTO KlientuAdreses VALUES -- noliktavas iekšējiem pārvietojumiem
    ('Rāznas 28B, Rīga, LV2110', 'noli01'),
    ('Rāznas 28C, Rīga, LV2110', 'noli02'),
    ('Gruzdīši, Līči, Rīgas nov., LV3017', 'noli03')
GO
INSERT INTO KlientuAdreses VALUES
    ('Saldavas 12, Rīga, Latvija', 'sril01'),
    ('Pärnu mnt 123, Tallinn, Harju maakond, Estonia', 'srio03'),
    ('Gedimino pr. 1, Vilnius, Lietuva', 'srit99'),
    ('Krišjāņa Barona iela 28, Rīga, Latvija', 'miav98'),
    ('Laisvės al. 20, Kaunas, Lietuva', 'mial00'),

    ('Narva mnt 50, Narva, Ida-Viru maakond, Estonia', 'miao02'),
    ('Tartu mnt 21b, Tartu, Tartu maakond, Estonia', 'prio92'),
    ('Rüütli 12, Pärnu, Pärnu maakond, Estonia', 'prio92'),
    ('Vabaduse väljak 9, Viljandi, Viljandi maakond, Estonia', 'prio92'),
    ('Gedimino pr. 1, Vilnius, Lietuva', 'selv05'),

    ('Žemaičių g. 8, Klaipėda, Lietuva', 'iklt97'),
    ('Jomas iela 16, Jūrmala, Latvija', 'mego96'),
    ('Dzirnavu iela 135, Liepāja, Latvija', 'topp02'),
    ('Raja 25, Haapsalu, Lääne maakond, Estonia', 'norf85'),
    ('Lielā iela 12, Daugavpils, Latvija', 'lilv20'),

    ('Tilžės g. 18, Šiauliai, Lietuva', 'lilt01'),
    ('Aia 8, Rakvere, Lääne-Viru maakond, Estonia', 'liou94'),
    ('Atgāzene, Aizputes novads, Latvija', 'ambe90'),
    ('Pargi 10, Kuressaare, Saare maakond, Estonia', 'balb03'),
    ('Mere 5, Kärdla, Hiiu maakond, Estonia', 'notr04'),

    ('Liivalaia 32, Tallinn, Harju maakond, Estonia', 'vege89'),
    ('Dariaus ir Girėno g. 4, Panevėžys, Lietuva', 'balg98'),
    ('Võidu 10, Valga, Valga maakond, Estonia', 'ogle99'),
    ('Lossi 3, Rakvere, Lääne-Viru maakond, Estonia', 'ogle99'),
    ('Kalēju iela 17, Valmiera, Latvija', 'jela96'),

    ('Vytauto g. 18, Alytus, Lietuva', 'balf05'),
    ('Didžioji g. 3, Telšiai, Lietuva', 'ault85'),
    ('Raiņa bulvāris 13, Jelgava, Latvija', 'aulv96'),
    ('Krasta iela 1, Ventspils, Latvija', 'skyy00'),
    ('Pils iela 12, Cēsis, Latvija', 'skyy00'),

    ('Vīlandes iela 4, Rēzekne, Latvija', 'skyy00'),
    ('Peldu iela 1, Sigulda, Latvija', 'bama87'),
    ('Kęstučio g. 15, Ukmergė, Lietuva', 'riva92'),
    ('Tilto g. 1, Marijampolė, Lietuva', 'karl88'),
    ('Tehnika 12, Jõhvi, Ida-Viru maakond, Estonia', 'frui85')
GO

-- Piegades( RekinaNr, PiegadesDatums, PiegadatajaID)

-- Pasutijumi( PasutijumaNr, DaudzumsKg, PardosanasCenaKg,
    -- KomplektesanasDatums, KomplektetajaID, KlientaID)

-- ProduktuAtlikums( Serija, Nosaukums, IepirkumaCenaKg, PiegadataisDaudzumsKg
    --  SkirnesID, RekinaNr)

-- ProduktuSadalijums( NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums)

-- ProduktiPasutijuma( ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs)

-- Rezervacijas( DarbiniekaID, ProduktaSerija, ProduktaNosaukums)

-- VisparigasProduktuGrupas( Kods, Nosaukums)
INSERT INTO VisparigasProduktuGrupas VALUES
    ('aug01', 'Augļi'),
    ('dar02', 'Dārzeņi'),
    ('oga03', 'Ogas'),
    ('pak04', 'Pakošanas materiāli')
GO

-- LielasProduktuGrupas( Kods, Nosaukums, VisparigasProduktuGrupasID)
INSERT INTO LielasProduktuGrupas VALUES --Augļi( aug01)
    ('cit01', 'Citrusaugļi', 'aug01'),
    ('tro02', 'Tropu augļi', 'aug01'),
    ('kau03', 'Kauliņaugļi', 'aug01'),
    ('mel04', 'Melones', 'aug01'),
    ('ban05', 'Banāni', 'aug01'),

    ('abo06', 'Āboli', 'aug01'),
    ('bum07', 'Bumbieri', 'aug01'),
    ('eks08', 'Eksotiskie augļi', 'aug01'),
    ('zav09', 'Žāvētie augļi', 'aug01')
GO
INSERT INTO LielasProduktuGrupas VALUES --Dārzeņi( dar02)
    ('kap01', 'Kāpostaugi', 'dar02'), 
    ('sak02', 'Sakņaugi', 'dar02'),
    ('sip03', 'Sīpolaugi', 'dar02'),
    ('lap04', 'Lapu dārzeņi', 'dar02'),
    ('kir05', 'Ķirbjaugi', 'dar02'),
    ('pak06', 'Pākšaugi', 'dar02'),
    ('gar07', 'Garšaugi', 'dar02'),
    ('tom08', 'Tomāti', 'dar02'),
    ('pip09', 'Pipari', 'dar02')
GO
INSERT INTO LielasProduktuGrupas VALUES --Ogas( oga03)
    ('mel01', 'Mellenes', 'oga03'),
    ('vin02', 'Vīnogas', 'oga03'),
    ('ave03', 'Avenes', 'oga03'),
    ('zem04', 'Zemenes', 'oga03'),
    ('fiz05', 'Fizāļi', 'oga03'),   
    ('kaz06', 'Kazenes', 'oga03'),
    ('kir07', 'Ķirši', 'oga03')
GO
INSERT INTO LielasProduktuGrupas VALUES --Pakošanas materiāli( pak04)
    ('pal01', 'Paletes', 'pak04'),
    ('kar02', 'Kartona kastes', 'pak04'),
    ('pla03', 'Plastikāta maisi', 'pak04')  
GO
-- Skirnes( Kods, Nosaukums, LielasProduktuGrupasID)

--Augļi
INSERT INTO Skirnes VALUES -- Citrusaugļi( cit01)
    ('ape01', 'Apelsīni', 'cit01'),
    ('man02', 'Mandarīni', 'cit01'),
    ('cit03', 'Citroni', 'cit01'),
    ('lai04', 'Laimi', 'cit01'),
    ('gre05', 'Greipfrūti', 'cit01')
GO
INSERT INTO Skirnes VALUES --Tropu augļi( tro02)
    ('ana01', 'Ananāsi', 'tro02'),
    ('kok02', 'Kokosrieksti', 'tro02'),
    ('kiv03', 'Kivi', 'tro02'),
    ('kum04', 'Kumkvats', 'tro02')
GO
INSERT INTO Skirnes VALUES -- Kauliņaugļi( kau03)
    ('nek01', 'Nektarīni', 'kau03'),
    ('per02', 'Persiki', 'kau03'),
    ('pla03', 'Plakanie Persiki', 'kau03'),
    ('plu04', 'Plūmes sarkanās', 'kau03'),
    ('plu05', 'Plūmes tumšās', 'kau03'),
    ('plu06', 'Plūmes gaišās', 'kau03'),
    ('apr07', 'Aprikozes', 'kau03')
GO
INSERT INTO Skirnes VALUES -- Melones( mel04)
    ('muz01', 'Melones Uzbekijas', 'mel04'),
    ('mho02', 'Melones HoneyDew', 'mel04'),
    ('arb03', 'Arbūzi', 'mel04'),
    ('arb04', 'Bio arbūzi', 'mel04'),
    ('abs05', 'Arbūzi bez sēklām', 'mel04')
GO
INSERT INTO Skirnes VALUES -- Banāni( ban05)
    ('cav01', 'Cavendish', 'ban05'),
    ('pla02', 'Planteur', 'ban05'),
    ('red03', 'Red', 'ban05'),
    ('bba04', 'Bio', 'ban05'),
    ('min05', 'Mini', 'ban05'),
    ('bnd06', 'Bio-Banderole', 'ban05')
GO
INSERT INTO Skirnes VALUES -- Āboli( abo06)
    ('cha01', 'Champion', 'abo06'),
    ('roy02', 'Royal Gala', 'abo06'),
    ('kan03', 'Kanzi', 'abo06'),
    ('gol04', 'Golden Delicious', 'abo06'),
    ('jon05', 'Jonaprince', 'abo06'),
    ('jan06', 'Janagold', 'abo06'),
    ('gra07', 'Granny Smith', 'abo06')
GO
INSERT INTO Skirnes VALUES -- Bumbieri( bum07)
    ('con01', 'Conference', 'bum07'),
    ('wil02', 'Williams', 'bum07'),
    ('mig03', 'Migo', 'bum07'),
    ('rar04', 'Red Bartlett', 'bum07')
GO
INSERT INTO Skirnes VALUES -- Eksotiskie augļi( eks08)
    ('man01', 'Mango', 'eks08'),
    ('gra02', 'Granātāboli', 'eks08'),
    ('pas03', 'Pasiflora', 'eks08'),
    ('pit04', 'Pitaija', 'eks08'),
    ('kar05', 'Karambola', 'eks08'),
    ('pap06', 'Papaija', 'eks08'),
    ('grd07', 'Granadilla', 'eks08')
GO
INSERT INTO Skirnes VALUES -- Žāvētie augļi( zav09)
    ('dat01', 'Dateles', 'zav09'),
    ('roz02', 'Rozīnes', 'zav09'),
    ('plu03', 'Plūmes', 'zav09'),
    ('vig04', 'Vīģes', 'zav09'),
    ('zap05', 'Aprikozes', 'zav09')
GO

-- Dārzeņi
INSERT INTO Skirnes VALUES -- Kāpostaugi( kap01)    
    ('kps01', 'Kāposti', 'kap01'),
    ('jkp02', 'Jaunie Kāposti', 'kap01'),
    ('zkp03', 'Ziedkāposti', 'kap01'),
    ('bro04', 'Brokoļi', 'kap01'),
    ('kol05', 'Kolrābji', 'kap01')
GO
INSERT INTO Skirnes VALUES -- Sakņaugi( sak02)    
    ('bur01', 'Burkāni', 'sak02'),
    ('bie02', 'Bietes', 'sak02'),
    ('rds03', 'Redīsi', 'sak02'),
    ('kal04', 'Kāļi', 'sak02'),
    ('inv05', 'Ingvers', 'sak02'),
    ('kar06', 'Kartupeļi', 'sak02')
GO
INSERT INTO Skirnes VALUES -- Sīpolaugi( sip03)  
    ('sis01', 'Sīpoli sarkanie', 'sip03'),
    ('sir02', 'Sīpoli baltie', 'sip03'),
    ('kip03', 'Ķiploki', 'sip03')
GO
INSERT INTO Skirnes VALUES -- Lapu dārzeņi( lap04) 
    ('sal01', 'Salāti', 'lap04'),
    ('spi02', 'Spināti', 'lap04')
GO
INSERT INTO Skirnes VALUES -- Ķirbjaugi( kir05)  
    ('kbj01', 'Ķirbji', 'kir05'),
    ('gug02', 'Gurķi garie', 'kir05'),
    ('gui03', 'Gurķi īsie', 'kir05'),
    ('kab04', 'Kabači', 'kir05'),
    ('cuk05', 'Cukini', 'kir05'),
    ('bak06', 'Baklažāni', 'kir05')
GO
INSERT INTO Skirnes VALUES -- Pākšaugi( pak06)  
    ('zir01', 'Zirņi', 'pak06'),
    ('kuk02', 'Kukurūza', 'pak06'),
    ('pup03', 'Pupas', 'pak06')
GO
INSERT INTO Skirnes VALUES -- Garšaugi( gar07)  
    ('dil01', 'Dilles', 'gar07'),
    ('pet02', 'Pētersīļi', 'gar07'),
    ('mar03', 'Mārrutki', 'gar07'),
    ('lok04', 'Loki', 'gar07'),
    ('baz05', 'Baziliks', 'gar07')
GO
INSERT INTO Skirnes VALUES --Tomāti( tom08)    
    ('kek01', 'Ķekaros', 'tom08'),
    ('che02', 'Cherry', 'tom08'),
    ('avn03', 'Aveņu', 'tom08'),
    ('fas04', 'Fasēti', 'tom08')
GO
INSERT INTO Skirnes VALUES -- Pipari( pip09)
    ('pps01', 'Paprika sarkana', 'pip09'),
    ('ppd02', 'Paprika dzeltena', 'pip09'),
    ('ppo03', 'Paprika oranža', 'pip09'),
    ('cil04', 'Čili', 'pip09'),
    ('ppz05', 'Paprika zaļa', 'pip09')
GO

-- Ogas
INSERT INTO Skirnes VALUES -- Mellenes( mel01) 
    ('mes01', 'Mellenes sveramas', 'mel01'),
    ('mef02', 'Mellenes fasētas', 'mel01')
GO
INSERT INTO Skirnes VALUES -- Vīnogas( vin02)
    ('vit01', 'Vīnogas tumšās', 'vin02'),
    ('vig02', 'Vīnogas gaišās', 'vin02')
GO
INSERT INTO Skirnes VALUES -- Avenes( ave03)
    ('avs01', 'Avenes sveramas', 'ave03'),
    ('avf02', 'Avenes fasētas', 'ave03')
GO
INSERT INTO Skirnes VALUES -- Zemenes( zem04)
    ('zes01', 'Zemenes sveramas', 'zem04'),
    ('zes02', 'Zemenes fasētas', 'zem04')
GO
INSERT INTO Skirnes VALUES -- Fizāļi( fiz05)
    ('fis01', 'Fizāļi sveramas', 'fiz05'),
    ('fif02', 'Fizāļi fasētas', 'fiz05')
GO
INSERT INTO Skirnes VALUES -- Kazenes( kaz06)
    ('kas01', 'Kazenes sveramas', 'kaz06'),
    ('kas02', 'Kazenes fasētas', 'kaz06')
GO
INSERT INTO Skirnes VALUES -- Ķirši( kir07)
    ('kit01', 'Ķirši tumšie', 'kir07'),
    ('kis02', 'Ķirši saldie', 'kir07'),
    ('kik03', 'Ķirši skābie', 'kir07')
GO

-- Pakošanas materiāli
INSERT INTO Skirnes VALUES -- Paletes( pal01)
    ('eur01', 'EUR paletes', 'pal01'),
    ('fin02', 'FIN paletes', 'pal01'),
    ('pus03', 'Puspaletes', 'pal01'),
    ('kar04', 'Karitas', 'pal01'),
    ('ppa05', 'Parastās paletes', 'pal01')
GO
INSERT INTO Skirnes VALUES -- Kartona kastes( kar02)
    ('lie01', 'Lielās', 'kar02'),
    ('maz02', 'Mazās', 'kar02'),
    ('vid03', 'Vidējās', 'kar02')
GO
INSERT INTO Skirnes VALUES -- Plastikāta maisi( pla03)    
    ('zil01', 'Zilie', 'pla03'),
    ('bal02', 'Baltie', 'pla03'),
    ('cau03', 'Caurspīdīgie', 'pla03')
GO
