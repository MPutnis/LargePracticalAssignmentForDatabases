-- Piegades( RekinaNr(10), PiegadesDatums, PiegadatajaID(6))
INSERT INTO Piegades (RekinaNr, PiegadesDatums, PiegadatajaID) VALUES
    -- 2405
    ('8947532', '2024-02-01', 'citr95'), --Banâni
    ('65798421', '2024-02-02', 'czfr23'), --BanâniMix
    ('38924657', '2024-02-02', 'czve93'), --BanâniBanderole
    ('5763248', '2024-02-04', 'frta83'),
    -- 2406
    ('120987654', '2024-02-05', 'most16'), --mandarîni
    ('93046825', '2024-02-06', 'most16'), --mandarîni
    ('28504967', '2024-02-07', 'most16'), --mandarîni
    ('364702985', '2024-02-08', 'citr95'),--Banâni
    ('73925846', '2024-02-09', 'czfr23'),--BanâniMix
    ('5076249', '2024-02-09', 'czve93'),--BanâniBanderole
    ('8261347', '2024-02-11', 'citr65'),
    -- 2407
    ('407695823', '2024-02-12', 'appl45'),
    ('98256143', '2024-02-13', 'nivo12'), --apelsîni
    ('6759321', '2024-02-14', 'nivo12'), --apelsîni
    ('2497638', '2024-02-15', 'citr95'),--Banâni
    ('7358492', '2024-02-16', 'czfr23'),--BanâniMix
    ('9203786', '2024-02-16', 'czve93'),--BanâniBanderole
    ('56397248', '2024-02-18', 'babe92'),
    -- 2408
    ('4802635', '2024-02-19', 'hecu00'), --apelsîni 
    ('15678932', '2024-02-20', 'hecu00'), --apelsîni
    ('34297856', '2024-02-21', 'grfr19'),
    ('89736254', '2024-02-22', 'citr95'),--Banâni
    ('4820573', '2024-02-23', 'czfr23'),--BanâniMix
    ('64987235', '2024-02-23', 'czve93'),--BanâniBanderole
    ('3659284', '2024-02-25', 'mdod15'),
    -- 2409
    ('54792086', '2024-02-26', 'egfr03'),
    ('734950628', '2024-02-27', 'nivo12'),
    ('9283476', '2024-02-28', 'hecu00'),
    ('72984635', '2024-02-29', 'citr95'),--Banâni
    ('5049862', '2024-03-01', 'czfr23'),--BanâniMix
    ('347612985', '2024-03-01', 'czve93'),--BanâniBanderole
    -- 2410
    ('9265748', '2024-03-03', 'most16'),
    ('8762943', '2024-03-04', 'pies88'),
    ('30924675', '2024-03-05', 'hutr95'),
    ('47692853', '2024-03-06', 'rofr00'),
    ('8294756', '2024-03-07', 'samr21'),
    ('23896471', '2024-03-08', 'citr95'),--Banâni
    ('79236485', '2024-03-09', 'czfr23'),--BanâniMix
    ('4067392', '2024-03-09', 'czve93'),--BanâniBanderole
    -- 2411
    ('12390786', '2024-03-11', 'mexf22'),
    ('84795236', '2024-03-12', 'hupr24'),
    ('609482753', '2024-03-13', 'plvg25'),
    ('57263498', '2024-03-14', 'frta83'),
    ('9873564', '2024-03-15', 'citr95'),--Banâni
    ('24079863', '2024-03-16', 'czfr23'),--BanâniMix
    ('38674529', '2024-03-16', 'czve93'),--BanâniBanderole
    -- 2412
    ('95482763', '2024-03-18', 'espf78'),--03
    ('72894615', '2024-03-18', 'grli02'),--03
    ('50964827', '2024-03-20', 'frut24'),
    ('94620573', '2024-03-21', 'vegw20'),
    ('8948532', '2024-03-22', 'citr95'),--Banâni
    ('65808421', '2024-03-23', 'czfr23'),--BanâniMix
    ('38934657', '2024-03-23', 'czve93'),--BanâniBanderole
    -- 2413
    ('5764248', '2024-03-25', 'citr65'),
    ('1209897654', '2024-03-26', 'appl45'),
    ('93056825', '2024-03-27', 'berr75'),
    ('28514967', '2024-03-28', 'bait13'),
    ('364712985', '2024-03-29', 'citr95'),--Banâni
    ('73935846', '2024-03-30', 'czfr23'),--BanâniMix
    ('5077249', '2024-03-30', 'czve93'),--BanâniBanderole
    -- 2414
    ('8262347', '2024-04-01', 'gefl97'),
    ('407635823', '2024-04-02', 'laha85'), --paletes
    ('98276143', '2024-04-03', 'babe92'),
    ('6760321', '2024-04-04', 'citr95'),--Banâni
    ('2498638', '2024-04-05', 'czfr23'),--BanâniMix
    ('5076354', '2024-04-05', 'czve93')--BanâniBanderole
GO
-- ProduktuAtlikums( Serija(6-7), Nosaukums(100), IepirkumaCenaKg, PiegadataisDaudzumsKg(8,3),
    --  SkirnesID, RekinaNr(10))
-- Banânu piegâdes
INSERT INTO ProduktuAtlikums 
    (Serija, Nosaukums, IepirkumaCenaKg, PiegadataisDaudzumsKg, SkirnesID, RekinaNr) 
    VALUES
    ('240501', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '8947532'),
    ('240502', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '65798421'),
    ('240502', 'Banâni Red, EC', 1.0765, 1280, 'red03', '65798421'),
    ('240502', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '65798421'),
    ('240502', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '38924657'),

    ('240601', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '364702985'),
    ('240602', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '73925846'),
    ('240602', 'Banâni Red, EC', 1.0765, 1280, 'red03', '73925846'),
    ('240602', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '73925846'),
    ('240602', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '5076249'),

    ('240701', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '2497638'),
    ('240702', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '7358492'),
    ('240702', 'Banâni Red, EC', 1.0765, 1280, 'red03', '7358492'),
    ('240702', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '7358492'),
    ('240702', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '9203786'),

    ('240801', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '89736254'),
    ('240802', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '4820573'),
    ('240802', 'Banâni Red, EC', 1.0765, 1280, 'red03', '4820573'),
    ('240802', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '4820573'),
    ('240802', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '64987235'),

    ('240901', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '72984635'),
    ('240902', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '5049862'),
    ('240902', 'Banâni Red, EC', 1.0765, 1280, 'red03', '5049862'),
    ('240902', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '5049862'),
    ('240902', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '347612985'),

    ('241001', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '23896471'),
    ('241002', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '79236485'),
    ('241002', 'Banâni Red, EC', 1.0765, 1280, 'red03', '79236485'),
    ('241002', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '79236485'),
    ('241002', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '4067392'),

    ('241101', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '9873564'),
    ('241102', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '24079863'),
    ('241102', 'Banâni Red, EC', 1.0765, 1280, 'red03', '24079863'),
    ('241102', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '24079863'),
    ('241102', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '38674529'),

    ('241201', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '8948532'),
    ('241202', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '65808421'),
    ('241202', 'Banâni Red, EC', 1.0765, 1280, 'red03', '65808421'),
    ('241202', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '65808421'),
    ('241202', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '38934657'),

    ('241301', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '364712985'),
    ('241302', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '73935846'),
    ('241302', 'Banâni Red, EC', 1.0765, 1280, 'red03', '73935846'),
    ('241302', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '73935846'),
    ('241302', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '5077249'),

    ('241401', 'Banâni negatavi, CO', 0.8340, 20897.28, 'cav01', '6760321'),
    ('241402', 'Banâni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '2498638'),
    ('241402', 'Banâni Red, EC', 1.0765, 1280, 'red03', '2498638'),
    ('241402', 'Banâni Mini, 12gab., CR', 1.193, 1920, 'min05', '2498638'),
    ('241402', 'Banâni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '5076354')
GO
 
-- ProduktuSadalijums( NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums, PiegadataisAtlikumsKg)
-- Banâni piesaistîti treðajai noliktavai
INSERT INTO ProduktuSadalijums
    (NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums, PiegadataisAtlikumsKg) 
    VALUES
    (3, '240501', 'Banâni negatavi, CO', 20897.28),
    (3, '240502', 'Banâni Bio Dole, EC', 9795.6),
    (3, '240502', 'Banâni Red, EC', 1280),
    (3, '240502', 'Banâni Mini, 12gab., CR', 1920),
    (3, '240502', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '240601', 'Banâni negatavi, CO', 20897.28),
    (3, '240602', 'Banâni Bio Dole, EC', 9795.6),
    (3, '240602', 'Banâni Red, EC', 1280),
    (3, '240602', 'Banâni Mini, 12gab., CR', 1920),
    (3, '240602', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '240701', 'Banâni negatavi, CO', 20897.28),
    (3, '240702', 'Banâni Bio Dole, EC', 9795.6),
    (3, '240702', 'Banâni Red, EC', 1280),
    (3, '240702', 'Banâni Mini, 12gab., CR', 1920),
    (3, '240702', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '240801', 'Banâni negatavi, CO', 20897.28),
    (3, '240802', 'Banâni Bio Dole, EC', 9795.6),
    (3, '240802', 'Banâni Red, EC', 1280),
    (3, '240802', 'Banâni Mini, 12gab., CR', 1920),
    (3, '240802', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '240901', 'Banâni negatavi, CO', 20897.28),
    (3, '240902', 'Banâni Bio Dole, EC', 9795.6),
    (3, '240902', 'Banâni Red, EC', 1280),
    (3, '240902', 'Banâni Mini, 12gab., CR', 1920),
    (3, '240902', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '241001', 'Banâni negatavi, CO', 20897.28),
    (3, '241002', 'Banâni Bio Dole, EC', 9795.6),
    (3, '241002', 'Banâni Red, EC', 1280),
    (3, '241002', 'Banâni Mini, 12gab., CR', 1920),
    (3, '241002', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '241101', 'Banâni negatavi, CO', 20897.28),
    (3, '241102', 'Banâni Bio Dole, EC', 9795.6),
    (3, '241102', 'Banâni Red, EC', 1280),
    (3, '241102', 'Banâni Mini, 12gab., CR', 1920),
    (3, '241102', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '241201', 'Banâni negatavi, CO', 20897.28),
    (3, '241202', 'Banâni Bio Dole, EC', 9795.6),
    (3, '241202', 'Banâni Red, EC', 1280),
    (3, '241202', 'Banâni Mini, 12gab., CR', 1920),
    (3, '241202', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '241301', 'Banâni negatavi, CO', 20897.28),
    (3, '241302', 'Banâni Bio Dole, EC', 9795.6),
    (3, '241302', 'Banâni Red, EC', 1280),
    (3, '241302', 'Banâni Mini, 12gab., CR', 1920),
    (3, '241302', 'Banâni Bio Banderole, EC', 8707.2),

    (3, '241401', 'Banâni negatavi, CO', 20897.28),
    (3, '241402', 'Banâni Bio Dole, EC', 9795.6),
    (3, '241402', 'Banâni Red, EC', 1280),
    (3, '241402', 'Banâni Mini, 12gab., CR', 1920),
    (3, '241402', 'Banâni Bio Banderole, EC', 8707.2)
GO
-- Rezervacijas( DarbiniekaID, ProduktaSerija, ProduktaNosaukums, RezervetiKg(8,3))

-- Pasutijumi( PasutijumaNr(7), KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
INSERT INTO Pasutijumi (PasutijumaNr, KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
    VALUES
    ('24-0132', '2024-02-05', 1012, 'srio03', 3),
    ('24-0133', '2024-02-05', 1013, 'srit99', 3),
    ('24-0134', '2024-02-05', 1013, 'srit99', 3)
GO
INSERT INTO Pasutijumi(PasutijumaNr, KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
    VALUES
    ('24-0135', '2024-02-05', 1012, 'frui85', 3), --1pal ban
    ('24-0136', '2024-02-05', 1013, 'vege89', 3), --1pal ban
    ('24-0137', '2024-02-05', 1013, 'ogle99', 3), --5pal ban

    ('24-0138', '2024-02-06', 1011, 'srio03', 3),
    ('24-0139', '2024-02-06', 1011, 'srit99', 3),
    ('24-0140', '2024-02-06', 1012, 'srit99', 3),
    ('24-0141', '2024-02-06', 1012, 'frui85', 3), --1pal ban
    ('24-0142', '2024-02-06', 1012, 'vege89', 3), --1pal ban
    ('24-0143', '2024-02-06', 1011, 'ogle99', 3), --5pal ban

    ('24-0144', '2024-02-12', 1012, 'srio03', 3),
    ('24-0145', '2024-02-12', 1013, 'srit99', 3),
    ('24-0146', '2024-02-12', 1013, 'srit99', 3),
    ('24-0147', '2024-02-12', 1012, 'frui85', 3), --1pal ban
    ('24-0148', '2024-02-12', 1013, 'vege89', 3), --1pal ban
    ('24-0149', '2024-02-12', 1013, 'ogle99', 3), --5pal ban

    ('24-0150', '2024-02-13', 1012, 'srio03', 3),
    ('24-0151', '2024-02-13', 1011, 'srit99', 3),
    ('24-0152', '2024-02-13', 1011, 'srit99', 3),
    ('24-0153', '2024-02-13', 1012, 'frui85', 3), --1pal ban
    ('24-0154', '2024-02-13', 1013, 'vege89', 3), --1pal ban
    ('24-0155', '2024-02-13', 1013, 'ogle99', 3), --5pal ban

    ('24-0156', '2024-04-01', 1011, 'srio03', 3),
    ('24-0157', '2024-04-01', 1012, 'srit99', 3),
    ('24-0158', '2024-04-01', 1011, 'srit99', 3),
    ('24-0159', '2024-04-01', 1013, 'frui85', 3), --1pal ban
    ('24-0160', '2024-04-01', 1013, 'vege89', 3), --1pal ban
    ('24-0161', '2024-04-01', 1013, 'ogle99', 3), --5pal ban

    ('24-0162', '2024-04-06', 1011, 'srio03', 3),
    ('24-0163', '2024-04-06', 1012, 'srit99', 3),
    ('24-0164', '2024-04-06', 1012, 'srit99', 3),
    ('24-0165', '2024-04-06', 1012, 'frui85', 3), --1pal ban
    ('24-0166', '2024-04-06', 1011, 'vege89', 3), --1pal ban
    ('24-0167', '2024-04-06', 1012, 'ogle99', 3) --5pal ban
GO
-- ProduktiPasutijuma( ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs,
    -- DaudzumsKg, PardosanasCenaKg,)

INSERT INTO ProduktiPasutijuma (ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
    VALUES
    ('240501', 'Banâni negatavi, CO', '24-0132', 8707.2, 1.1501),
    ('240502', 'Banâni Bio Dole, EC', '24-0132', 870.2, 1.5517),
    ('240502', 'Banâni Red, EC', '24-0132', 120, 1.5001),
    ('240502', 'Banâni Mini, 12gab., CR', '24-0132', 60, 1.7179),
    ('240502', 'Banâni Bio Banderole, EC', '24-0132', 870.2, 1.5517),

    ('240501', 'Banâni negatavi, CO', '24-0133', 6095.04, 1.1501),
    ('240502', 'Banâni Bio Dole, EC', '24-0133', 1306.08, 1.5517),
    ('240502', 'Banâni Red, EC', '24-0133', 136, 1.5001),
    ('240502', 'Banâni Mini, 12gab., CR', '24-0133', 96, 1.7179),
    ('240502', 'Banâni Bio Banderole, EC', '24-0133', 435.36, 1.5517),

    ('240502', 'Banâni Bio Dole, EC', '24-0134', 1306.08, 1.5517),
    ('240502', 'Banâni Red, EC', '24-0134', 136, 1.5001),
    ('240502', 'Banâni Mini, 12gab., CR', '24-0134', 96, 1.7179),
    ('240502', 'Banâni Bio Banderole, EC', '24-0134', 435.36, 1.5517)
GO

INSERT INTO ProduktiPasutijuma (ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
    VALUES
	('240502', 'Banâni Bio Banderole, EC', '24-0135', 2401.64, 1.653),
	('240502', 'Banâni Mini, 12gab., CR', '24-0135', 108, 1.7325),
	('240502', 'Banâni Red, EC', '24-0135', 512.0, 1.653),

	('240502', 'Banâni Bio Dole, EC', '24-0136', 2619.32, 1.683),
	('240502', 'Banâni Mini, 12gab., CR', '24-0136', 216, 1.7325),
	('240502', 'Banâni Red, EC', '24-0136', 376.0, 1.653),

	('240502', 'Banâni Bio Banderole, EC', '24-0137', 1250, 1.653),
	('240502', 'Banâni Bio Dole, EC', '24-0137', 1250, 1.653)
GO

INSERT INTO ProduktiPasutijuma (ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
    VALUES
    ('240501', 'Banâni negatavi, CO', '24-0138', 3095.04, 1.1501),
    ('240502', 'Banâni Bio Dole, EC', '24-0138', 800.0, 1.5517),
    ('240502', 'Banâni Mini, 12gab., CR', '24-0138', 96, 1.7179),
    ('240502', 'Banâni Bio Banderole, EC', '24-0138', 1314.64, 1.5517),

    ('240501', 'Banâni negatavi, CO', '24-0139', 3000.0, 1.1501),
    ('240502', 'Banâni Bio Dole, EC', '24-0139', 800.0, 1.5517),
    ('240502', 'Banâni Mini, 12gab., CR', '24-0139', 120, 1.7179),
    ('240502', 'Banâni Bio Banderole, EC', '24-0139', 1000.0, 1.5517),

	('240502', 'Banâni Bio Dole, EC', '24-0140', 843.92, 1.5517),
    ('240502', 'Banâni Mini, 12gab., CR', '24-0140', 144, 1.7179),
    ('240502', 'Banâni Bio Banderole, EC', '24-0140', 1000.0, 1.5517)
GO

INSERT INTO Pasutijumi(PasutijumaNr, KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
    VALUES
    ('24-0168', '2024-02-08', 1012, 'topp02', 3)
GO

INSERT INTO ProduktiPasutijuma 
	(ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
VALUES
	('240502', 'Banâni Mini, 12gab., CR', '24-0168', 984, 1.3512)
GO

INSERT INTO Pasutijumi(PasutijumaNr, KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
    VALUES
    ('24-0169', '2024-04-02', 1013, 'srio03', 3),
    ('24-0170', '2024-04-02', 1013, 'srit99', 3),
    ('24-0171', '2024-04-02', 1011, 'srit99', 3)
GO

--1302/01 56-61 & 69-71
INSERT INTO ProduktiPasutijuma (ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
    VALUES
    ('241301', 'Banâni negatavi, CO', '24-0156', 8707.2, 1.1501),
    ('241302', 'Banâni Bio Dole, EC', '24-0156', 870.2, 1.5517),
    ('241302', 'Banâni Red, EC', '24-0156', 120, 1.5001),
    ('241302', 'Banâni Mini, 12gab., CR', '24-0156', 60, 1.7179),
    ('241302', 'Banâni Bio Banderole, EC', '24-0156', 870.2, 1.5517),

    ('241301', 'Banâni negatavi, CO', '24-0157', 6095.04, 1.1501),
    ('241302', 'Banâni Bio Dole, EC', '24-0157', 1306.08, 1.5517),
    ('241302', 'Banâni Red, EC', '24-0157', 136, 1.5001),
    ('241302', 'Banâni Mini, 12gab., CR', '24-0157', 96, 1.7179),
    ('241302', 'Banâni Bio Banderole, EC', '24-0157', 435.36, 1.5517),

	('241302', 'Banâni Bio Dole, EC', '24-0158', 1306.08, 1.5517),
    ('241302', 'Banâni Red, EC', '24-0158', 136, 1.5001),
    ('241302', 'Banâni Mini, 12gab., CR', '24-0158', 96, 1.7179),
    ('241302', 'Banâni Bio Banderole, EC', '24-0158', 435.36, 1.5517),

	('241302', 'Banâni Bio Banderole, EC', '24-0159', 2401.64, 1.653),
	('241302', 'Banâni Mini, 12gab., CR', '24-0159', 108, 1.7325),
	('241302', 'Banâni Red, EC', '24-0159', 512.0, 1.653),

	('241302', 'Banâni Bio Dole, EC', '24-0160', 2619.32, 1.683),
	('241302', 'Banâni Mini, 12gab., CR', '24-0160', 216, 1.7325),
	('241302', 'Banâni Red, EC', '24-0160', 376.0, 1.653),

	('241302', 'Banâni Bio Banderole, EC', '24-0161', 1250, 1.653),
	('241302', 'Banâni Bio Dole, EC', '24-0161', 1250, 1.653),

	('241301', 'Banâni negatavi, CO', '24-0169', 3095.04, 1.1501),
    ('241302', 'Banâni Bio Dole, EC', '24-0169', 800.0, 1.5517),
    ('241302', 'Banâni Mini, 12gab., CR', '24-0169', 96, 1.7179),
    ('241302', 'Banâni Bio Banderole, EC', '24-0169', 1314.64, 1.5517),

    ('241301', 'Banâni negatavi, CO', '24-0170', 3000.0, 1.1501),
    ('241302', 'Banâni Bio Dole, EC', '24-0170', 800.0, 1.5517),
    ('241302', 'Banâni Mini, 12gab., CR', '24-0170', 120, 1.7179),
    ('241302', 'Banâni Bio Banderole, EC', '24-0170', 1000.0, 1.5517),

	('241302', 'Banâni Bio Dole, EC', '24-0171', 843.92, 1.5517),
    ('241302', 'Banâni Mini, 12gab., CR', '24-0171', 144, 1.7179),
    ('241302', 'Banâni Bio Banderole, EC', '24-0171', 1000.0, 1.5517)
GO

--1402/01 62-67
INSERT INTO ProduktiPasutijuma (ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
    VALUES
    ('241401', 'Banâni negatavi, CO', '24-0162', 8707.2, 1.1501),
    ('241402', 'Banâni Bio Dole, EC', '24-0162', 870.2, 1.5517),
    ('241402', 'Banâni Red, EC', '24-0162', 120, 1.5001),
    ('241402', 'Banâni Mini, 12gab., CR', '24-0162', 60, 1.7179),
    ('241402', 'Banâni Bio Banderole, EC', '24-0162', 870.2, 1.5517),
	('241302', 'Banâni Mini, 12gab., CR', '24-0162', 328, 1.3102),

    ('241401', 'Banâni negatavi, CO', '24-0163', 6095.04, 1.1501),
    ('241402', 'Banâni Bio Dole, EC', '24-0163', 1306.08, 1.5517),
    ('241402', 'Banâni Red, EC', '24-0163', 136, 1.5001),
    ('241402', 'Banâni Mini, 12gab., CR', '24-0163', 96, 1.7179),
    ('241402', 'Banâni Bio Banderole, EC', '24-0163', 435.36, 1.5517),
	('241302', 'Banâni Mini, 12gab., CR', '24-0163', 328, 1.3102),

	('241402', 'Banâni Bio Dole, EC', '24-0164', 1306.08, 1.5517),
    ('241402', 'Banâni Red, EC', '24-0164', 136, 1.5001),
    ('241402', 'Banâni Mini, 12gab., CR', '24-0164', 96, 1.7179),
    ('241402', 'Banâni Bio Banderole, EC', '24-0164', 435.36, 1.5517),
	('241302', 'Banâni Mini, 12gab., CR', '24-0164', 328, 1.3102),

	('241402', 'Banâni Bio Banderole, EC', '24-0165', 2401.64, 1.653),
	('241402', 'Banâni Mini, 12gab., CR', '24-0165', 108, 1.7325),
	('241402', 'Banâni Red, EC', '24-0165', 512.0, 1.653),

	('241402', 'Banâni Bio Dole, EC', '24-0166', 2619.32, 1.683),
	('241402', 'Banâni Mini, 12gab., CR', '24-0166', 216, 1.7325),
	('241402', 'Banâni Red, EC', '24-0166', 376.0, 1.653),

	('241402', 'Banâni Bio Banderole, EC', '24-0167', 1250, 1.653),
	('241402', 'Banâni Bio Dole, EC', '24-0167', 1250, 1.653)
GO
