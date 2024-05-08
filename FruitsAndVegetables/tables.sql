        -- Tabulu izveidošana

    --Darbinieki un Noliktavas

-- Darbinieku tabula
CREATE TABLE Darbinieki(
    ID SMALLINT IDENTITY(1000,1) PRIMARY KEY ,
    Vards NVARCHAR(30) NOT NULL,
    Uzvards NVARCHAR(30) NOT NULL,
    Mob_Nr CHAR(12),
    Amats NVARCHAR(30),
    Darbavieta TINYINT
)
GO

-- Noliktavu tabula
CREATE TABLE Noliktavas(
    Numurs TINYINT NOT NULL PRIMARY KEY,
    Nosaukums CHAR(11),
    Adrese NVARCHAR(100)
)
GO

-- Foreign Key no Darbavieta uz Noliktavas
ALTER TABLE Darbinieki ADD
FOREIGN KEY (Darbavieta) REFERENCES
Noliktavas(Numurs)
GO

    -- Piegādātāji un Piegādes

-- Piegādātāji
CREATE TABLE Piegadataji(
    ID VARCHAR(6) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(100),
    Adrese NVARCHAR(255),
    KontaNr VARCHAR(17),
    RegistracijasNr VARCHAR(15)
)
GO
-- Piegādes
CREATE TABLE Piegades(
    RekinaNr VARCHAR(10) NOT NULL PRIMARY KEY,
    DaudzumsKg DECIMAL(8,3) NOT NULL,
    IepirkumaCenaKg SMALLMONEY NOT NULL,
    ProduktaKopejaCena SMALLMONEY,
    PiegadesDatums DATE,
    PiegadatajaID VARCHAR(6) FOREIGN KEY REFERENCES Piegadataji(ID)
)
GO

    -- Klienti, to Adreses un Pasūtījumi

-- Klienti
CREATE TABLE Klienti(
    ID VARCHAR(6) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(100),
    RegistracijasNr VARCHAR(15),
    KontaNr VARCHAR(15),
    MenedzerisID SMALLINT
        FOREIGN KEY REFERENCES Darbinieki(ID)
)
GO
-- Klientu Adreses
CREATE TABLE KlientuAdreses(
    ID SMALLINT IDENTITY PRIMARY KEY,
    Adrese NVARCHAR(255) NOT NULL,
    KlientaID VARCHAR(6) NOT NULL
        FOREIGN KEY REFERENCES Klienti(ID)  
)
GO
-- Pasūtījumi
CREATE TABLE Pasutijumi(
    PasutijumaNr VARCHAR(7) NOT NULL PRIMARY KEY,
    DaudzumsKg DECIMAL(8,3),
    PardosanasCenaKg SMALLMONEY,
    KomplektesanasDatums DATE,
    KomplektetajaID SMALLINT
        FOREIGN KEY REFERENCES Darbinieki(ID),
    KlientaID VARCHAR(6) NOT NULL
        FOREIGN KEY REFERENCES Klienti(ID)
)
GO

    -- Produktu Atlikums, Sadalījums pa Noliktavām un Pasūtījumiem, Rezervācijas

-- Produktu atlikums
CREATE TABLE ProduktuAtlikums(
    Serija VARCHAR(7) NOT NULL,
    Nosaukums NVARCHAR(100) NOT NULL,
    PRIMARY KEY( Serija, Nosaukums),
    SkirnesID CHAR(5),
    RekinaNr VARCHAR(10) NOT NULL 
        FOREIGN KEY REFERENCES Piegades(RekinaNr)
    -- Atlikums
    -- Pašizmaksa
    -- 10%Cena
    -- 20%Cena
    -- 50%Cena
)
GO
-- Produktu Sadalījums
CREATE TABLE ProduktuSadalijums(
    NoliktavasNumurs TINYINT NOT NULL 
        FOREIGN KEY REFERENCES Noliktavas(Numurs),
    ProduktaSerija VARCHAR(7) NOT NULL,
    ProduktaNosaukums NVARCHAR(100) NOT NULL,
    FOREIGN KEY(ProduktaSerija,ProduktaNosaukums) 
        REFERENCES ProduktuAtlikums(Serija,Nosaukums)
)
GO
-- Produkti Pasūtījumā
CREATE TABLE ProduktiPasutijuma(
    ProduktaSerija VARCHAR(7) NOT NULL,
    ProduktaNosaukums NVARCHAR(100) NOT NULL,
    FOREIGN KEY(ProduktaSerija,ProduktaNosaukums) 
        REFERENCES ProduktuAtlikums(Serija,Nosaukums),
    PasutijumaNumurs VARCHAR(7) NOT NULL
        FOREIGN KEY REFERENCES Pasutijumi(PasutijumaNr)
)
GO
-- Rezervācijas
CREATE TABLE Rezervacijas(
    DarbiniekaID SMALLINT NOT NULL
    FOREIGN KEY REFERENCES Darbinieki(ID),
    ProduktaSerija VARCHAR(7) NOT NULL,
    ProduktaNosaukums NVARCHAR(100) NOT NULL,
    FOREIGN KEY(ProduktaSerija,ProduktaNosaukums) 
        REFERENCES ProduktuAtlikums(Serija,Nosaukums)
)
GO
    -- Produktu Grupu tabulas

-- Vispārīgās Produktu Grupas
CREATE TABLE VisparigasProduktuGrupas(
    Kods CHAR(5) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(20)
)
GO

-- Lielās Produktu Grupas
CREATE TABLE LielasProduktuGrupas(
    Kods CHAR(5) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(20),
    VisparigasProduktuGrupasID CHAR(5)
        FOREIGN KEY REFERENCES VisparigasProduktuGrupas(Kods) 
)
GO

-- Škirnes (jeb Mazās produktu grupas)
CREATE TABLE Skirnes(
    Kods CHAR(5) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(20),
    LielasProduktuGrupasID CHAR(5)
        FOREIGN KEY REFERENCES LielasProduktuGrupas(Kods)
)
GO

-- Foreign Key no ProduktuAtlikums uz Skirnes
ALTER TABLE ProduktuAtlikums ADD
    FOREIGN KEY (SkirnesID) 
        REFERENCES Skirnes(Kods)
GO