-- Piegades( RekinaNr(10), PiegadesDatums, PiegadatajaID(6))
INSERT INTO Piegades (RekinaNr, PiegadesDatums, PiegadatajaID) VALUES
    -- 2405
    ('8947532', '2024-02-01', 'citr95'), --Banāni
    ('65798421', '2024-02-02', 'czfr23'), --BanāniMix
    ('38924657', '2024-02-02', 'czve93'), --BanāniBanderole
    ('5763248', '2024-02-04', 'frta83'),
    -- 2406
    ('120987654', '2024-02-05', 'most16'), --mandarīni
    ('93046825', '2024-02-06', 'most16'), --mandarīni
    ('28504967', '2024-02-07', 'most16'), --mandarīni
    ('364702985', '2024-02-08', 'citr95'),--Banāni
    ('73925846', '2024-02-09', 'czfr23'),--BanāniMix
    ('5076249', '2024-02-09', 'czve93'),--BanāniBanderole
    ('8261347', '2024-02-11', 'citr65'),
    -- 2407
    ('407695823', '2024-02-12', 'appl45'),
    ('98256143', '2024-02-13', 'nivo12'), --apelsīni
    ('6759321', '2024-02-14', 'nivo12'), --apelsīni
    ('2497638', '2024-02-15', 'citr95'),--Banāni
    ('7358492', '2024-02-16', 'czfr23'),--BanāniMix
    ('9203786', '2024-02-16', 'czve93'),--BanāniBanderole
    ('56397248', '2024-02-18', 'babe92'),
    -- 2408
    ('4802635', '2024-02-19', 'hecu00'), --apelsīni 
    ('15678932', '2024-02-20', 'hecu00'), --apelsīni
    ('34297856', '2024-02-21', 'grfr19'),
    ('89736254', '2024-02-22', 'citr95'),--Banāni
    ('4820573', '2024-02-23', 'czfr23'),--BanāniMix
    ('64987235', '2024-02-23', 'czve93'),--BanāniBanderole
    ('3659284', '2024-02-25', 'mdod15'),
    -- 2409
    ('54792086', '2024-02-26', 'egfr03'),
    ('734950628', '2024-02-27', 'nivo12'),
    ('9283476', '2024-02-28', 'hecu00'),
    ('72984635', '2024-02-29', 'citr95'),--Banāni
    ('5049862', '2024-03-01', 'czfr23'),--BanāniMix
    ('347612985', '2024-03-01', 'czve93'),--BanāniBanderole
    -- 2410
    ('9265748', '2024-03-03', 'most16'),
    ('8762943', '2024-03-04', 'pies88'),
    ('30924675', '2024-03-05', 'hutr95'),
    ('47692853', '2024-03-06', 'rofr00'),
    ('8294756', '2024-03-07', 'samr21'),
    ('23896471', '2024-03-08', 'citr95'),--Banāni
    ('79236485', '2024-03-09', 'czfr23'),--BanāniMix
    ('4067392', '2024-03-09', 'czve93'),--BanāniBanderole
    -- 2411
    ('12390786', '2024-03-11', 'mexf22'),
    ('84795236', '2024-03-12', 'hupr24'),
    ('609482753', '2024-03-13', 'plvg25'),
    ('57263498', '2024-03-14', 'frta83'),
    ('9873564', '2024-03-15', 'citr95'),--Banāni
    ('24079863', '2024-03-16', 'czfr23'),--BanāniMix
    ('38674529', '2024-03-16', 'czve93'),--BanāniBanderole
    -- 2412
    ('95482763', '2024-03-18', 'espf78'),--03
    ('72894615', '2024-03-18', 'grli02'),--03
    ('50964827', '2024-03-20', 'frut24'),
    ('94620573', '2024-03-21', 'vegw20'),
    ('8948532', '2024-03-22', 'citr95'),--Banāni
    ('65808421', '2024-03-23', 'czfr23'),--BanāniMix
    ('38934657', '2024-03-23', 'czve93'),--BanāniBanderole
    -- 2413
    ('5764248', '2024-03-25', 'citr65'),
    ('1209897654', '2024-03-26', 'appl45'),
    ('93056825', '2024-03-27', 'berr75'),
    ('28514967', '2024-03-28', 'bait13'),
    ('364712985', '2024-03-29', 'citr95'),--Banāni
    ('73935846', '2024-03-30', 'czfr23'),--BanāniMix
    ('5077249', '2024-03-30', 'czve93'),--BanāniBanderole
    -- 2414
    ('8262347', '2024-04-01', 'gefl97'),
    ('407635823', '2024-04-02', 'laha85'), --paletes
    ('98276143', '2024-04-03', 'babe92'),
    ('6760321', '2024-04-04', 'citr95'),--Banāni
    ('2498638', '2024-04-05', 'czfr23'),--BanāniMix
    ('5076354', '2024-04-05', 'czve93')--BanāniBanderole
GO
-- ProduktuAtlikums( Serija(6-7), Nosaukums(100), IepirkumaCenaKg, PiegadataisDaudzumsKg(8,3),
    --  SkirnesID, RekinaNr(10))
-- Banānu piegādes
INSERT INTO ProduktuAtlikums 
    (Serija, Nosaukums, IepirkumaCenaKg, PiegadataisDaudzumsKg, SkirnesID, RekinaNr) 
    VALUES
    ('240501', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '8947532'),
    ('240502', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '65798421'),
    ('240502', 'Banāni Red, EC', 1.0765, 1280, 'red03', '65798421'),
    ('240502', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '65798421'),
    ('240502', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '38924657'),

    ('240601', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '364702985'),
    ('240602', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '73925846'),
    ('240602', 'Banāni Red, EC', 1.0765, 1280, 'red03', '73925846'),
    ('240602', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '73925846'),
    ('240602', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '5076249'),

    ('240701', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '2497638'),
    ('240702', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '7358492'),
    ('240702', 'Banāni Red, EC', 1.0765, 1280, 'red03', '7358492'),
    ('240702', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '7358492'),
    ('240702', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '9203786'),

    ('240801', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '89736254'),
    ('240802', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '4820573'),
    ('240802', 'Banāni Red, EC', 1.0765, 1280, 'red03', '4820573'),
    ('240802', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '4820573'),
    ('240802', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '64987235'),

    ('240901', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '72984635'),
    ('240902', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '5049862'),
    ('240902', 'Banāni Red, EC', 1.0765, 1280, 'red03', '5049862'),
    ('240902', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '5049862'),
    ('240902', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '347612985'),

    ('241001', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '23896471'),
    ('241002', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '79236485'),
    ('241002', 'Banāni Red, EC', 1.0765, 1280, 'red03', '79236485'),
    ('241002', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '79236485'),
    ('241002', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '4067392'),

    ('241101', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '9873564'),
    ('241102', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '24079863'),
    ('241102', 'Banāni Red, EC', 1.0765, 1280, 'red03', '24079863'),
    ('241102', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '24079863'),
    ('241102', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '38674529'),

    ('241201', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '8948532'),
    ('241202', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '65808421'),
    ('241202', 'Banāni Red, EC', 1.0765, 1280, 'red03', '65808421'),
    ('241202', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '65808421'),
    ('241202', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '38934657'),

    ('241301', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '364712985'),
    ('241302', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '73935846'),
    ('241302', 'Banāni Red, EC', 1.0765, 1280, 'red03', '73935846'),
    ('241302', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '73935846'),
    ('241302', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '5077249'),

    ('241401', 'Banāni negatavi, CO', 0.8340, 20897.28, 'cav01', '6760321'),
    ('241402', 'Banāni Bio Dole, EC', 1.1317, 9795.6, 'bba04', '2498638'),
    ('241402', 'Banāni Red, EC', 1.0765, 1280, 'red03', '2498638'),
    ('241402', 'Banāni Mini, 12gab., CR', 14.3253, 1920, 'min05', '2498638'),
    ('241402', 'Banāni Bio Banderole, EC', 1.1317, 8707.2, 'bnd06', '5076354')
GO
-- ProduktuSadalijums( NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums, PiegadataisAtlikumsKg)
-- Banāni piesaistīti trešajai noliktavai
INSERT INTO ProduktuSadalijums
    (NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums, PiegadataisAtlikumsKg) 
    VALUES
    (3, '240501', 'Banāni negatavi, CO', 20897.28),
    (3, '240502', 'Banāni Bio Dole, EC', 9795.6),
    (3, '240502', 'Banāni Red, EC', 1280),
    (3, '240502', 'Banāni Mini, 12gab., CR', 1920),
    (3, '240502', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '240601', 'Banāni negatavi, CO', 20897.28),
    (3, '240602', 'Banāni Bio Dole, EC', 9795.6),
    (3, '240602', 'Banāni Red, EC', 1280),
    (3, '240602', 'Banāni Mini, 12gab., CR', 1920),
    (3, '240602', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '240701', 'Banāni negatavi, CO', 20897.28),
    (3, '240702', 'Banāni Bio Dole, EC', 9795.6),
    (3, '240702', 'Banāni Red, EC', 1280),
    (3, '240702', 'Banāni Mini, 12gab., CR', 1920),
    (3, '240702', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '240801', 'Banāni negatavi, CO', 20897.28),
    (3, '240802', 'Banāni Bio Dole, EC', 9795.6),
    (3, '240802', 'Banāni Red, EC', 1280),
    (3, '240802', 'Banāni Mini, 12gab., CR', 1920),
    (3, '240802', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '240901', 'Banāni negatavi, CO', 20897.28),
    (3, '240902', 'Banāni Bio Dole, EC', 9795.6),
    (3, '240902', 'Banāni Red, EC', 1280),
    (3, '240902', 'Banāni Mini, 12gab., CR', 1920),
    (3, '240902', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '241001', 'Banāni negatavi, CO', 20897.28),
    (3, '241002', 'Banāni Bio Dole, EC', 9795.6),
    (3, '241002', 'Banāni Red, EC', 1280),
    (3, '241002', 'Banāni Mini, 12gab., CR', 1920),
    (3, '241002', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '241101', 'Banāni negatavi, CO', 20897.28),
    (3, '241102', 'Banāni Bio Dole, EC', 9795.6),
    (3, '241102', 'Banāni Red, EC', 1280),
    (3, '241102', 'Banāni Mini, 12gab., CR', 1920),
    (3, '241102', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '241201', 'Banāni negatavi, CO', 20897.28),
    (3, '241202', 'Banāni Bio Dole, EC', 9795.6),
    (3, '241202', 'Banāni Red, EC', 1280),
    (3, '241202', 'Banāni Mini, 12gab., CR', 1920),
    (3, '241202', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '241301', 'Banāni negatavi, CO', 20897.28),
    (3, '241302', 'Banāni Bio Dole, EC', 9795.6),
    (3, '241302', 'Banāni Red, EC', 1280),
    (3, '241302', 'Banāni Mini, 12gab., CR', 1920),
    (3, '241302', 'Banāni Bio Banderole, EC', 8707.2),

    (3, '241401', 'Banāni negatavi, CO', 20897.28),
    (3, '241402', 'Banāni Bio Dole, EC', 9795.6),
    (3, '241402', 'Banāni Red, EC', 1280),
    (3, '241402', 'Banāni Mini, 12gab., CR', 1920),
    (3, '241402', 'Banāni Bio Banderole, EC', 8707.2)
GO
-- Rezervacijas( DarbiniekaID, ProduktaSerija, ProduktaNosaukums, RezervetiKg(8,3))

-- Pasutijumi( PasutijumaNr(7), KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
INSERT INTO Pasutijumi (PasutijumaNr, KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
    VALUES
    ('24-0132', '2024-02-05', 1013, 'srio03', 3),
    ('24-0133', '2024-02-05', 1014, 'srit99', 3)
GO
-- ProduktiPasutijuma( ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs,
    -- DaudzumsKg, PardosanasCenaKg,)

INSERT INTO ProduktiPasutijuma (ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
    VALUES
    ('240501', 'Banāni negatavi, CO', '24-0132', 8707.2, 0.9201),
    ('240502', 'Banāni Bio Dole, EC', '24-0132', 870.2, 1.2517),
    ('240502', 'Banāni Red, EC', '24-0132', 120, 1.2301),
    ('240502', 'Banāni Mini, 12gab., CR', '24-0132', 60, 16.1002),
    ('240502', 'Banāni Bio Banderole, EC', '24-0132', 870.2, 1.2517),

    ('240501', 'Banāni negatavi, CO', '24-0133', 6095.04, 0.9201),
    ('240502', 'Banāni Bio Dole, EC', '24-0132', 1306.08, 1.2517),
    ('240502', 'Banāni Red, EC', '24-0132', 136, 1.2301),
    ('240502', 'Banāni Mini, 12gab., CR', '24-0132', 96, 16.1002),
    ('240502', 'Banāni Bio Banderole, EC', '24-0132', 435.36, 1.2517)
GO