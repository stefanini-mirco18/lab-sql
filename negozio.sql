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
