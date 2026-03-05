create table treno (
    ID_treno VARCHAR(6) PRIMARY KEY,
    max_posti INT(55) not null,
    anno_costruzione DATE not null
   );

create table tratta(
    code_tratta INT(11) PRIMARY KEY AUTO_INCREMENT,
    stazione_partenza VARCHAR(55) not null,
    stazione_arrivo VARCHAR(55) not null,
    km int(100) not null
    );

create table corsa(
    ID_corsa INT(11) AUTO_INCREMENT PRIMARY KEY,
    code_tratta INT(11),
    FOREIGN KEY (code_tratta) REFERENCES tratta(code_tratta),
    ID_treno VARCHAR(55) not null,
    data DATE not null,
    orario_partenza DATETIME not null,
    orario_arrivo DATETIME not null
);
