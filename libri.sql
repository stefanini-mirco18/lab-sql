create table casa_editrice(
    id_casa int(11) primary key AUTO_INCREMENT,
    nome varchar(25) not null,
    nazione varchar(25) not null,
    anno_fondazione INT(4) not null,
    tipo varchar(25) not null
);
 
create table autore(
    id_autore int(11) PRIMARY KEY AUTO_INCREMENT,
    nome varchar(25) not null,
    cognome varchar(25) not null,
    data_nascita DATE not null,
    sesso char(1) not null,
    nazionalita varchar(25) not null
);

create table libro(
    id_libro int(11) AUTO_INCREMENT PRIMARY KEY,
    id_casa_editrice int(11),
    FOREIGN KEY(id_casa_editrice) REFERENCES casa_editrice(id_casa)
    
