    -- Datu ievietošana tabulās
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
-- Noliktavas( Numurs, Nosaukums, Adrese)
INSERT INTO Noliktavas VALUES
    (0, 'Ofiss', 'Rāznas 28B, Rīga, LV2110'),
    (1, '1.Noliktava', 'Rāznas 28B, Rīga, LV2110'),
    (2, '2.Noliktava', 'Rāznas 28C, Rīga, LV2110'),
    (3, '3.Noliktava', 'Gruzdīši, Līči, Rīgas nov., LV3017')
GO
-- Piegadataji( ID, Nosaukums, Adrese, KontaNr, RegistracijasNr)
INSERT INTO Piegadataji VALUES
    ('citr95', 'Citronex', 'Ul. Przemysłowa 10, 30-701 Kraków, Poland', 'PL90123456789012345','452163897')
GO
-- Piegades( RekinaNr, DaudzumsKg, IepirkumaCenaKg,
    -- ProduktaKopejaCena, PiegadesDatums,PiegadatajaID)

-- Klienti( ID, Nosaukums, RegistracijasNr, KontaNr, MenedzerisID)

-- KlientuAdreses( ID, Adrese, KlientaID)

-- Pasutijumi( PasutijumaNr, DaudzumsKg, PardosanasCenaKg,
    -- KomplektesanasDatums, KomplektetajaID, KlientaID)

-- ProduktuAtlikums( Serija,, Nosaukums, SkirnesID, RekinaNr)

-- ProduktuSadalijums( NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums)

-- ProduktiPasutijuma( ProduktaSerija, ProduktaNosaukums, PasutijumaNumurs)

-- Rezervacijas( DarbiniekaID, ProduktaSerija, ProduktaNosaukums)

-- VisparigasProduktuGrupas( Kods, Nosaukums)

-- LielasProduktuGrupas( Kods, Nosaukums, VisparigasProduktuGrupasID)

-- Skirnes( Kods, Nosaukums, LielasProduktuGrupasID)