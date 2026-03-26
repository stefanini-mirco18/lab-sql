--2
select cod_modello, nome from 4CTL_modelli_prodotto;
--3
select prezzo_listino from 4CTL_modelli_prodotto where prezzo_listino<500;
--4
SELECT nome from 4CTL_modelli_prodotto where nome LIKE 'Samsung%';
--5
SELECT nome from 4CTL_clienti where nome LIKE '%a';
--6
select * from 4CTL_prodottiordini order by prezzo_totale_pagato desc;
--7
select DISTINCT categoria from 4CTL_modelli_prodotto;
--8
select * from 4CTL_prodotti order by data_arrivo limit 10;
--9
select * from 4CTL_clienti order by nome asc, cognome asc;
--10
select * from 4CTL_ordini where data_ordine>'2024/05/31' AND data_ordine<'2024/07/1';
--11
select s.cod_seriale, d.nome from 4CTL_prodotti s, 4CTL_modelli_prodotto d where s.id_modello= d.id_modello;
--12
select o.id_ordine, c.cognome, m.nome, p.cod_seriale from 4CTL_ordini o, 4CTL_clienti c, 4CTL_modelli_prodotto m, 4CTL_prodotti p, 4CTL_dettagli_ordine d
where o.id_cliente=c.id_cliente AND m.id_modello=p.id_modello AND d.id_ordine=o.id_ordine AND d.id_prodotto=p.id_prodotto;
--13
select g.stato_garanzia, p.cod_seriale from 4CTL_garanzie g, 4CTL_prodotti p where g.id_prodotto=p.id_prodotto;
--14


