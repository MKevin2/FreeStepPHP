create database dbFree
default character set utf8
default collate utf8_general_ci;
use dbFree;

create table tbl_categoria
(	
    cd_categoria int primary key auto_increment,
    ds_categoria varchar(25) not null    
)
default charset utf8;

create table tbl_marca /*Antigo autor*/
(	
    cd_marca int primary key auto_increment,
    nm_marca varchar(45) not null    
)
default charset utf8;

create table tbl_tenis
(	
    cd_tenis int primary key auto_increment,
    cd_categoria int not null,
    nm_tenis varchar(70) not null, /*nm_livro*/
    cd_marca int not null,
    nu_tenis varchar(4) not null,
    vl_preco decimal(6,2) not null,
    qt_estoque int not null,
    ds_tenis text not null, /*resumo da obra*/
    ds_img varchar(255) not null, /*ds_capa*/
    sg_lancamento enum('S','N') not null,
    constraint fk_cat foreign key(cd_categoria) references tbl_categoria(cd_categoria),
    constraint fk_marca foreign key(cd_marca) references tbl_marca(cd_marca)
)  
default charset utf8;

describe tbl_tenis;
describe tbl_categoria;
describe tbl_marca;

insert into tbl_categoria ()
values ();