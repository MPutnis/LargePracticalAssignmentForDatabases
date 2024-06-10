-- Rezervāciju tests
insert into Rezervacijas 
    values
    (1001, '241101', 'Banāni negatavi, CO', 10000, 3),
    (1001, '241101', 'Banāni negatavi, CO', 5000, 3)
go

INSERT INTO ProduktuAtlikums 
    (Serija, Nosaukums, IepirkumaCenaKg, PiegadataisDaudzumsKg, SkirnesID, RekinaNr) 
    VALUES
    ('240503', 'Āboli Janagold, PO', 1.0201, 5325.234, 'jan06', '5763248'),
    ('240503', 'Āboli Champion, PO', 0.5602, 10203.200, 'cha01', '5763248'),
    ('240503', 'Āboli RoyalGala, PO', 1.020, 4810.341, 'roy02', '5763248'),
    --'120987654' '93046825' '28504967'
    ('240603', 'Mandarīni Nodorcott, 3/4.cal, MA', 0.4532, 10000, 'man02', '120987654'),
    ('240603', 'Mandarīni Nodorcott, 5/6.cal, MA', 0.4825, 6000, 'man02', '120987654'),
    ('240603', 'Mandarīni Nodorcott, 7.cal, MA', 0.5011, 4000, 'man02', '120987654'),
    ('240604', 'Mandarīni Clementines, 3/4.cal, MA', 0.4001, 9000, 'man02', '93046825'),
    ('240604', 'Mandarīni Clementines, 5/6.cal, MA', 0.4205, 7000, 'man02', '93046825'),
    ('240604', 'Mandarīni Clementines, 7.cal, MA', 0.4501, 4000, 'man02', '93046825'),
    ('240605', 'Mandarīni Clemenules, 1/2.cal, MA', 0.4302, 5000, 'man02', '28504967'),
    ('240605', 'Mandarīni Clemenules, 3/4.cal, MA', 0.4432, 15000, 'man02', '28504967')
GO


INSERT INTO ProduktuSadalijums
    (NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums, PiegadataisAtlikumsKg) 
    VALUES
    (1, '240503', 'Āboli Janagold, PO', 5325.234),
    (1, '240503', 'Āboli Champion, PO', 5000.0),
    (1, '240503', 'Āboli RoyalGala, PO', 4810.341),
    (2, '240503', 'Āboli Champion, PO', 5203.200),

    (2, '240603', 'Mandarīni Nodorcott, 3/4.cal, MA', 10000),
    (2, '240603', 'Mandarīni Nodorcott, 5/6.cal, MA', 6000),
    (2, '240603', 'Mandarīni Nodorcott, 7.cal, MA', 4000),
    (2, '240604', 'Mandarīni Clementines, 3/4.cal, MA', 9000),
    (2, '240604', 'Mandarīni Clementines, 5/6.cal, MA', 7000),
    (2, '240604', 'Mandarīni Clementines, 7.cal, MA', 4000),
    (2, '240605', 'Mandarīni Clemenules, 1/2.cal, MA', 5000),
    (2, '240605', 'Mandarīni Clemenules, 3/4.cal, MA', 15000)
GO

INSERT INTO Pasutijumi (PasutijumaNr, KomplektesanasDatums, KomplektetajaID, KlientaID, NoliktavasID)
    VALUES
    ('24-0172', '2024-02-04', 1009, 'mial00', 2),
--lilv20 lilt01 liou94
    ('24-0173', '2024-02-05', 1007, 'liou94', 1),
    ('24-0174', '2024-02-05', 1008, 'lilt01', 1),
    ('24-0175', '2024-02-05', 1009, 'lilv20', 1),
--ambe90 vege89 selv05 norf85 miao02 balg98 frui85 mego96
    ('24-0176', '2024-02-07', 1008, 'miao02', 2),
    ('24-0177', '2024-02-07', 1008, 'ambe90', 2),
    ('24-0178', '2024-02-08', 1009, 'vege89', 2),
    ('24-0179', '2024-02-08', 1009, 'selv05', 2),
    ('24-0180', '2024-02-08', 1009, 'norf85', 2),
    ('24-0181', '2024-02-08', 1009, 'balg98', 2),
    ('24-0182', '2024-02-08', 1009, 'frui85', 2),
    ('24-0183', '2024-02-09', 1010, 'mego96', 2)
GO

INSERT INTO ProduktiPasutijuma 
	(ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs, DaudzumsKg, PardosanasCenaKg)
VALUES -- speciāli atstāju dažus gramus noliktavā, lai parādītos atlikumu tabulā
    ('240503', 'Āboli Champion, PO', '24-0172', 5203.0, 1.511),

    ('240503', 'Āboli Janagold, PO', '24-0173', 2325.0, 1.511),
    ('240503', 'Āboli Champion, PO', '24-0173', 2000.0, 0.8012),
    ('240503', 'Āboli RoyalGala, PO', '24-0173', 1610.0, 1.501),

    ('240503', 'Āboli Champion, PO', '24-0174', 1500, 1.511),
    ('240503', 'Āboli Janagold, PO', '24-0174', 1500, 0.8012),
    ('240503', 'Āboli RoyalGala, PO', '24-0174', 1600, 1.501),

    ('240503', 'Āboli Champion, PO', '24-0175', 1500, 1.511),
    ('240503', 'Āboli Janagold, PO', '24-0175', 1500, 0.8012),
    ('240503', 'Āboli RoyalGala, PO', '24-0175', 1600, 1.501),

    ('240603', 'Mandarīni Nodorcott, 3/4.cal, MA', '24-0176', 10000.1, 0.6317),
    ('240603', 'Mandarīni Nodorcott, 5/6.cal, MA', '24-0177', 6000.1, 0.6517),
    ('240603', 'Mandarīni Nodorcott, 7.cal, MA', '24-0178', 4000.1, 0.7017),
    ('240604', 'Mandarīni Clementines, 3/4.cal, MA', '24-0179', 9000.1, 0.6017),
    ('240604', 'Mandarīni Clementines, 5/6.cal, MA', '24-0180', 7000.1, 0.6217),
    ('240604', 'Mandarīni Clementines, 7.cal, MA', '24-0181', 4000.1, 0.6517),
    ('240605', 'Mandarīni Clemenules, 1/2.cal, MA', '24-0182', 5000.1, 0.6317),
    ('240605', 'Mandarīni Clemenules, 3/4.cal, MA', '24-0183', 15000.1, 0.6517)
GO





