-- Tekošie atlikumi + Rezervācijas  (tekošie atlikumi- produkti kuru atlikums != 0)
    -- ProduktuSadalijums + Rezervacijas + Darbinieki(Menedžeri) kā kolonnu nosaukumi
	-- šobrīd ar atlikumiem kaut kas notiek tikai 3. Noliktavā, tāpēc Atlikumi_1 un Atlikumi_2 ir tukši
		/* komentārs par to, kāpēc nekas nav rezervēts:
			reālajā datubāzē, uz kuru šī datubaze ir balstīta, šī opcija ne reizi netika izmantota.
			Vismaz ne tajos piecos gados cik man nācās ar to saskarties, līdz ar to atstāju šo
			kā piemēru funkcionalitātei, kuru nevienam nevajag.
		*/
CREATE VIEW Atlikumi as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Maija
    from ProduktuSadalijums PS
    left join Rezervacijas R 
        on R.ProduktaSerija = PS.ProduktaSerija 
        and R.ProduktaNosaukums = PS.ProduktaNosaukums
    where Atlikums != 0
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        Atlikums
go
select * from Atlikumi
go
CREATE VIEW Atlikumi_1 as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Maija
    from ProduktuSadalijums PS
    left join Rezervacijas R 
        on R.ProduktaSerija = PS.ProduktaSerija 
        and R.ProduktaNosaukums = PS.ProduktaNosaukums
    where Atlikums != 0 and PS.NoliktavasNumurs = 1
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        Atlikums
go
select * from Atlikumi_1
go
CREATE VIEW Atlikumi_2 as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Maija
    from ProduktuSadalijums PS
    left join Rezervacijas R 
        on R.ProduktaSerija = PS.ProduktaSerija 
        and R.ProduktaNosaukums = PS.ProduktaNosaukums
    where Atlikums != 0 and PS.NoliktavasNumurs = 2
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        Atlikums
go
select * from Atlikumi_2
go
CREATE VIEW Atlikumi_3 as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja menedžera rezervāciju summa produktam ir 0, tad atgriež NULL, kurš tiek parvērsts par tukšumu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1004 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Maija
    from ProduktuSadalijums PS
    left join Rezervacijas R 
        on R.ProduktaSerija = PS.ProduktaSerija 
        and R.ProduktaNosaukums = PS.ProduktaNosaukums
    where Atlikums != 0 and PS.NoliktavasNumurs = 3
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        Atlikums
go
select * from Atlikumi_3
go

-- Tekošie atlikumi + Uzcenojums
	-- šobrīd ar atlikumiem kaut kas notiek tikai 3. Noliktavā, tāpēc CenuLapa_1 un CenuLapa_2 ir tukšas
create view CenuLapa as
select 
	PS.ProduktaSerija, 
	PS.ProduktaNosaukums, 
	PS.Atlikums,
	PA.IepirkumaCenaKg,
	CAST( PA.IepirkumaCenaKg * 1.20 AS smallmoney) AS Pasizmaksa,
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.10 AS smallmoney) AS '+10%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.20 AS smallmoney) AS '+20%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.50 AS smallmoney) AS '+50%'
    from ProduktuSadalijums PS
    left join ProduktuAtlikums PA 
        on PA.Serija = PS.ProduktaSerija 
        and PA.Nosaukums = PS.ProduktaNosaukums
    where Atlikums != 0
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        PS.Atlikums,
        PA.IepirkumaCenaKg
go
Select * From CenuLapa
go
create view CenuLapa_1 as
select 
	PS.ProduktaSerija, 
	PS.ProduktaNosaukums, 
	PS.Atlikums,
	PA.IepirkumaCenaKg,
	CAST( PA.IepirkumaCenaKg * 1.20 AS smallmoney) AS Pasizmaksa,
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.10 AS smallmoney) AS '+10%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.20 AS smallmoney) AS '+20%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.50 AS smallmoney) AS '+50%'
    from ProduktuSadalijums PS
    left join ProduktuAtlikums PA 
        on PA.Serija = PS.ProduktaSerija 
        and PA.Nosaukums = PS.ProduktaNosaukums
    where Atlikums != 0 and PS.NoliktavasNumurs = 1
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        PS.Atlikums,
        PA.IepirkumaCenaKg
go
Select * From CenuLapa_1
go

create view CenuLapa_2 as
select 
	PS.ProduktaSerija, 
	PS.ProduktaNosaukums, 
	PS.Atlikums,
	PA.IepirkumaCenaKg,
	CAST( PA.IepirkumaCenaKg * 1.20 AS smallmoney) AS Pasizmaksa,
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.10 AS smallmoney) AS '+10%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.20 AS smallmoney) AS '+20%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.50 AS smallmoney) AS '+50%'
    from ProduktuSadalijums PS
    left join ProduktuAtlikums PA 
        on PA.Serija = PS.ProduktaSerija 
        and PA.Nosaukums = PS.ProduktaNosaukums
    where Atlikums != 0 and PS.NoliktavasNumurs = 2
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        PS.Atlikums,
        PA.IepirkumaCenaKg
go
Select * From CenuLapa_2
go

create view CenuLapa_3 as
select 
	PS.ProduktaSerija, 
	PS.ProduktaNosaukums, 
	PS.Atlikums,
	PA.IepirkumaCenaKg,
	CAST( PA.IepirkumaCenaKg * 1.20 AS smallmoney) AS Pasizmaksa,
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.10 AS smallmoney) AS '+10%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.20 AS smallmoney) AS '+20%',
	CAST( (PA.IepirkumaCenaKg * 1.20) * 1.50 AS smallmoney) AS '+50%'
    from ProduktuSadalijums PS
    left join ProduktuAtlikums PA 
        on PA.Serija = PS.ProduktaSerija 
        and PA.Nosaukums = PS.ProduktaNosaukums
    where Atlikums != 0 and PS.NoliktavasNumurs = 3
    group by
        PS.ProduktaSerija, 
        PS.ProduktaNosaukums, 
        PS.Atlikums,
        PA.IepirkumaCenaKg
go



Select * From CenuLapa_3;

-- Produktu kategorijas pārdotais daudzums pa ceturkšņiem
    -- pasūtījumu datumi + ProduktiPasutijuma sum(daudzumi) un nosaukums + ProduktuAtlikumi šķirne
Select 
	distinct PA.SkirnesID,
	YEAR(P.KomplektesanasDatums) AS PasutijumaGads, -- kurā gadā ir ceturksnis
	(DATEPART(mm, P.KomplektesanasDatums)-1) / 3 + 1 AS PasutijumaCeturksnis, -- ceturkšņa aprēķins
	SUM( PP.DaudzumsKg) OVER ( -- pārdotais apjoms ceturksnī
		Partition By 
			PA.SkirnesID, 
			YEAR(P.KomplektesanasDatums),
			((DATEPART(mm, P.KomplektesanasDatums)-1) / 3 + 1)
	) AS CeturksnaTirdznieciba
    From
        ProduktiPasutijuma PP
    JOIN
        ProduktuAtlikums PA ON PP.ProduktaNosaukums = PA.Nosaukums and PA.Serija = PP.ProduktaSerija
    JOIN
	    Pasutijumi P ON PP.PasutijumaNumurs = P.PasutijumaNr
    --WHERE PA.SkirnesID = 'cav01'
go

-- Piegādātie produktu kategorijas apjomi pa ceturkšņiem
    -- Piegades PiegadesDatums + ProduktuAtlikums Skirne & PiegadataisDaudzums
SELECT
	DISTINCT SkirnesID,
	YEAR( PiegadesDatums) AS PiegazuGads,
	(DATEPART( mm, PiegadesDatums)-1)/3+1 AS PiegazuCeturksnis,
	SUM( PiegadataisDaudzumsKg) OVER (
		PARTITION BY
			SkirnesID,
			YEAR ( PiegadesDatums),
			((DATEPART( mm, PiegadesDatums)-1)/3+1)
		) AS CeturksnaPiegades
	FROM
		ProduktuAtlikums pa
	JOIN
		Piegades p ON pa.RekinaNr = p.RekinaNr
    --WHERE PA.SkirnesID = 'cav01'
GO

-- Produkta tirdzniecība klientiem( kuriem klientiem produkts tika notirgots konkrēts produkts)
    -- serija + nosaukums + daudzums no ProduktiPasutijuma + datums un klientaID no pasutijumi + klienta nos. no Klienti
Select
	p.KomplektesanasDatums,
	pp.ProduktaSerija, pp.ProduktaNosaukums, pp.PasutijumaNumurs, pp.DaudzumsKg,
	k.Nosaukums
	From
		ProduktiPasutijuma pp
	Join
		Pasutijumi p
		ON
			pp.PasutijumaNumurs = p.PasutijumaNr
	Join 
		Klienti k 
		ON
			p.KlientaID = k.ID
	Where
		pp.ProduktaSerija = '240502' and pp.ProduktaNosaukums = 'Ban�ni Mini, 12gab., CR' 
	order by p.KomplektesanasDatums
Go

-- Provizoriskā( pieņemot ka visi pasūtījumi ir apmaksāti ) peļņa no produkta tirdzniecības
    -- visu pasūtījumu summēts( pārdošanas cena* daudzums) - (pašizmaksa* piegādātais daudzums)
Select 
	distinct pa.Serija, pa.Nosaukums, pa.RekinaNr, pa.PiegadataisDaudzumsKg,
	--cast(pa.IepirkumaCenaKg * 1.20 as smallmoney) AS PasizmaksaKg,
	cast(pa.PiegadataisDaudzumsKg * (pa.IepirkumaCenaKg * 1.20) as smallmoney) AS PiegadePasizmaksa,
	sum(DaudzumsKg) over (partition by ProduktaSerija, ProduktaNosaukums) AS KopaPardotsKg,
	sum(cast( DaudzumsKg * PardosanasCenaKg as smallmoney)) over (Partition By ProduktaSerija, ProduktaNosaukums) as Ienakumi,
	cast( 
		sum(cast( DaudzumsKg * PardosanasCenaKg as smallmoney)) over (Partition By ProduktaSerija, ProduktaNosaukums)
		-
		(pa.PiegadataisDaudzumsKg * (pa.IepirkumaCenaKg * 1.20))
		as smallmoney) AS Pelna
	From
		ProduktiPasutijuma pp
	Join
		ProduktuAtlikums pa
		On 
			pa.Serija = pp.ProduktaSerija and 
			pa.Nosaukums = pp.ProduktaNosaukums
	Order By Pelna desc
GO

    -- ienākumi no produktu tirdzniecības
    select 
        distinct ProduktaSerija, ProduktaNosaukums,
        sum(DaudzumsKg) over (partition by ProduktaSerija, ProduktaNosaukums) AS KopaPardotsKg,
        avg(PardosanasCenaKg) over (partition by ProduktaSerija, ProduktaNosaukums) AS VidejaCena,
        sum(cast( DaudzumsKg * PardosanasCenaKg as smallmoney)) over (Partition By ProduktaSerija, ProduktaNosaukums) as Ienakumi
        from ProduktiPasutijuma
    go

-- Pārdošanas ar zaudējumiem( zem pašizmaksas)
Select 
	pp.*, pa.IepirkumaCenaKG,
	cast(pa.IepirkumaCenaKg * 1.2 as smallmoney) as Pasizmaksa,
	cast( (pp.DaudzumsKg * pp.PardosanasCenaKg) 
		- (pp.DaudzumsKg * (pa.IepirkumaCenaKg * 1.2)) 
		as smallmoney) as Zaudejums
	From
		ProduktiPasutijuma pp
	Join
		ProduktuAtlikums pa
	On 
		pa.Nosaukums = pp.ProduktaNosaukums and
		pa.Serija = pp.ProduktaSerija
	where
		pp.PardosanasCenaKg < (pa.IepirkumaCenaKg * 1.20)
go
-- Klientu sadalījums pēc gūtās peļņas
    -- peļņas summa no klienta pasūtījumiem, sakārtot klientus pēc peļņas
		-- ProduktiPasutijuma + Pasutijumi + Klienti + ProduktuAtlikumi( produkta pašizmaksa)
Select 
	distinct k.Nosaukums AS Klients,
	sum(
		cast(
			(pp.DaudzumsKg * pp.PardosanasCenaKg)
			-
			(pp.DaudzumsKg * (pa.IepirkumaCenaKg * 1.2))
		as smallmoney)
		) 
		Over (partition by p.KlientaID)
		AS Pelna
	From
		ProduktiPasutijuma pp
	Join
		ProduktuAtlikums pa
		On
			pp.ProduktaSerija = pa.Serija and
			pp.ProduktaNosaukums = pa.Nosaukums
	Join
		Pasutijumi p
		On 
			pp.PasutijumaNumurs = p.PasutijumaNr
	Join
		Klienti k
		On 
			p.KlientaID	= k.ID
	Order by Pelna desc
GO
