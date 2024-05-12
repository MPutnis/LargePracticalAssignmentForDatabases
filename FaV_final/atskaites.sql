-- Teko�ie atlikumi + Rezerv�cijas  (teko�ie atlikumi- produkti kuru atlikums != 0)
    -- ProduktuSadalijums + Rezervacijas + Darbinieki(Mened�eri) k� kolonnu nosaukumi
	-- �obr�d ar atlikumiem kaut kas notiek tikai 3. Noliktav�, t�p�c Atlikumi_1 un Atlikumi_2 ir tuk�i
		/* koment�rs par to, k�p�c nekas nav rezerv�ts:
			re�laj� datub�z�, uz kuru �� datubaze ir balst�ta, �� opcija ne reizi netika izmantota.
			Vismaz ne tajos piecos gados cik man n�c�s ar to saskarties, l�dz ar to atst�ju �o
			k� piem�ru funkcionalit�tei, kuru nevienam nevajag.
		*/
CREATE VIEW Atlikumi as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
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
select * from Atlikumi;
CREATE VIEW Atlikumi_1 as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
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
select * from Atlikumi_1;
CREATE VIEW Atlikumi_2 as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
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
select * from Atlikumi_2;
CREATE VIEW Atlikumi_3 as
select 
    PS.ProduktaSerija, 
    PS.ProduktaNosaukums, 
    Atlikums,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1000 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Arturs,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1001 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Juris,
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1002 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Laima,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
            CASE WHEN SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) = 0 THEN null ELSE SUM(CASE WHEN R.DarbiniekaID = 1003 THEN R.RezervetiKg ELSE 0 END) END 
        as nvarchar(max)), '') AS Andris,    
    isnull(
        cast( -- ja mened�era rezerv�ciju summa produktam ir 0, tad atgrie� NULL, kur� tiek p�rv�rsts par tuk�umu
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
select * from Atlikumi_3;

-- Teko�ie atlikumi + Uzcenojums
	-- �obr�d ar atlikumiem kaut kas notiek tikai 3. Noliktav�, t�p�c CenuLapa_1 un CenuLapa_2 ir tuk�as
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
Select * From CenuLapa;
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
Select * From CenuLapa_1;

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
Select * From CenuLapa_2;

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
Select * From Atlikumi_3;
-- Produktu kategorijas p�rdotais daudzums pa ceturk��iem
    -- pas�t�jumu datumi + ProduktiPasutijuma sum(daudzumi) un nosaukums + ProduktuAtlikumi ��irne
Select 
	distinct PA.SkirnesID,
	YEAR(P.KomplektesanasDatums) AS PasutijumaGads, -- kur� gad� ir ceturksnis
	(DATEPART(mm, P.KomplektesanasDatums)-1) / 3 + 1 AS PasutijumaCeturksnis, -- ceturk��a apr��ins
	SUM( PP.DaudzumsKg) OVER ( -- p�rdotais apjoms ceturksn�
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

-- Pieg�d�tie produktu kategorijas apjomi pa ceturk��iem
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

-- Produkta tirdzniec�ba klientiem( kuriem klientiem produkts tika notirgots konkr�ts produkts)
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

-- Provizorisk�(pie�emot ka visi pas�t�jumi ir apmaks�ti ) pe��a no produkta tirdzniec�bas
    -- visu pas�t�jumu summ�ts(p�rdo�anas cena* daudzums) - (pa�izmaksa* pieg�d�tais daudzums)
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

    -- ien�kumi no produktu tirdzniec�bas
    select 
        distinct ProduktaSerija, ProduktaNosaukums,
        sum(DaudzumsKg) over (partition by ProduktaSerija, ProduktaNosaukums) AS KopaPardotsKg,
        avg(PardosanasCenaKg) over (partition by ProduktaSerija, ProduktaNosaukums) AS VidejaCena,
        sum(cast( DaudzumsKg * PardosanasCenaKg as smallmoney)) over (Partition By ProduktaSerija, ProduktaNosaukums) as Ienakumi
        from ProduktiPasutijuma
    go

-- P�rdo�anas ar zaud�jumiem( zem pa�izmaksas)
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
-- Klientu sadal�jums p�c g�t�s pe��as
    -- pe��as summa no klienta pas�t�jumiem, sak�rtot klientus p�c pe��as
		-- ProduktiPasutijuma + Pasutijumi + Klienti + ProduktuAtlikumi( produkta pa�izmaksa)
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
