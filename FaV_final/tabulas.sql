        -- Tabulu izveidoðana

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

    -- Piegâdâtâji un Piegâdes

-- Piegâdâtâji
CREATE TABLE Piegadataji(
    ID VARCHAR(6) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(100),
    Adrese NVARCHAR(255),
    KontaNr VARCHAR(17),
    RegistracijasNr VARCHAR(15)
)
GO
-- Piegâdes
CREATE TABLE Piegades(
    RekinaNr VARCHAR(10) NOT NULL PRIMARY KEY,
    PiegadesDatums DATE,
    PiegadatajaID VARCHAR(6) FOREIGN KEY REFERENCES Piegadataji(ID)
)

    -- Klienti, to Adreses un Pasûtîjumi

-- Klienti
CREATE TABLE Klienti(
    ID VARCHAR(6) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(100),
    RegistracijasNr VARCHAR(15),
    KontaNr VARCHAR(17),
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
-- Pasûtîjumi
CREATE TABLE Pasutijumi(
    PasutijumaNr VARCHAR(7) NOT NULL PRIMARY KEY,
    KomplektesanasDatums DATE,
    KomplektetajaID SMALLINT
        FOREIGN KEY REFERENCES Darbinieki(ID),
    KlientaID VARCHAR(6) NOT NULL
        FOREIGN KEY REFERENCES Klienti(ID),
    NoliktavasID TINYINT 
        FOREIGN KEY REFERENCES Noliktavas(Numurs)
)
GO

    -- Produktu Atlikums, Sadalîjums pa Noliktavâm un Pasûtîjumiem, Rezervâcijas

-- Produktu atlikums
CREATE TABLE ProduktuAtlikums(
    Serija VARCHAR(7) NOT NULL,
    Nosaukums NVARCHAR(100) NOT NULL,
    PRIMARY KEY( Serija, Nosaukums),
    SkirnesID CHAR(5),
    RekinaNr VARCHAR(10) NOT NULL 
        FOREIGN KEY REFERENCES Piegades(RekinaNr),
    PiegadataisDaudzumsKg DECIMAL(8,3) NOT NULL,
    IepirkumaCenaKg SMALLMONEY NOT NULL
)
GO
-- Produktu Sadalîjums
CREATE TABLE ProduktuSadalijums(
    NoliktavasNumurs TINYINT NOT NULL 
        FOREIGN KEY REFERENCES Noliktavas(Numurs),
    ProduktaSerija VARCHAR(7) NOT NULL,
    ProduktaNosaukums NVARCHAR(100) NOT NULL,
    FOREIGN KEY(ProduktaSerija,ProduktaNosaukums) 
        REFERENCES ProduktuAtlikums(Serija,Nosaukums),
    PiegadataisAtlikumsKg DECIMAL(8,3)
)
GO

-- Produkti Pasûtîjumâ
CREATE TABLE ProduktiPasutijuma(
    ProduktaSerija VARCHAR(7) NOT NULL,
    ProduktaNosaukums NVARCHAR(100) NOT NULL,
    FOREIGN KEY(ProduktaSerija,ProduktaNosaukums) 
        REFERENCES ProduktuAtlikums(Serija,Nosaukums),
    PasutijumaNumurs VARCHAR(7) NOT NULL
        FOREIGN KEY REFERENCES Pasutijumi(PasutijumaNr),
    DaudzumsKg DECIMAL(8,3),
    PardosanasCenaKg SMALLMONEY
)
GO
-- Rezervâcijas
CREATE TABLE Rezervacijas(
    DarbiniekaID SMALLINT NOT NULL
    FOREIGN KEY REFERENCES Darbinieki(ID),
    ProduktaSerija VARCHAR(7) NOT NULL,
    ProduktaNosaukums NVARCHAR(100) NOT NULL,
    FOREIGN KEY(ProduktaSerija,ProduktaNosaukums) 
        REFERENCES ProduktuAtlikums(Serija,Nosaukums),
    RezervetiKg DECIMAL(8,3),
	NoliktavasID TINYINT
)
GO
Alter table Rezervacijas Add
Foreign Key ( NoliktavasID)
References Noliktavas(Numurs)

    -- Produktu Grupu tabulas

-- Vispârîgâs Produktu Grupas
CREATE TABLE VisparigasProduktuGrupas(
    Kods CHAR(5) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(20)
)
GO

-- Lielâs Produktu Grupas
CREATE TABLE LielasProduktuGrupas(
    Kods CHAR(5) NOT NULL PRIMARY KEY,
    Nosaukums NVARCHAR(20),
    VisparigasProduktuGrupasID CHAR(5)
        FOREIGN KEY REFERENCES VisparigasProduktuGrupas(Kods) 
)
GO

-- Ðkirnes (jeb Mazâs produktu grupas)
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

-- Funkcija  tekoðâ atlikuma aprçíinam 
CREATE FUNCTION dbo.AtlikumaAprekins (
    @NoliktavasNumurs TINYINT,
    @ProduktaSerija VARCHAR(7),
    @ProduktaNosaukums NVARCHAR(100)
)
RETURNS DECIMAL(8,3)
AS
BEGIN
    DECLARE @Atlikums DECIMAL(8,3);
    SELECT @Atlikums = ISNULL(
        -- Iegûst daudzumu kurð tika piegâdâts uz noliktavu
        (SELECT PiegadataisAtlikumsKg FROM ProduktuSadalijums 
        WHERE ProduktaSerija = @ProduktaSerija 
        AND ProduktaNosaukums = @ProduktaNosaukums), 0
    ) - ISNULL(
        -- saskaita visus atbilstoðâ produkta pârdotos daudzums atbilstoðajâ noliktavâ
        (SELECT SUM(PP.DaudzumsKg)
        FROM ProduktiPasutijuma PP
        INNER JOIN Pasutijumi P ON PP.PasutijumaNumurs = P.PasutijumaNr
        WHERE PP.ProduktaSerija = @ProduktaSerija
        AND PP.ProduktaNosaukums = @ProduktaNosaukums
        AND P.NoliktavasID = @NoliktavasNumurs),
        0
    );

    RETURN @Atlikums;
END
GO
ALTER TABLE ProduktuSadalijums
ADD Atlikums AS dbo.AtlikumaAprekins( NoliktavasNumurs, ProduktaSerija, ProduktaNosaukums)
GO