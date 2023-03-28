namespace my.livraria;
using { Country, managed } from '@sap/cds/common';

entity Livros {
  
  key ID    : Integer;
  titulo    : localized String;
  autor     : Association to Autores;
  estoque   : Integer;

}

entity Autores {
  
  key ID : Integer;
  nome   : String;
  livros : Association to many Livros on livros.autor = $self;

}

entity Pedidos : managed {
  
  key ID        : UUID;
  livro         : Association to Livros;
  pais          : Country;
  quantidade    : Integer;

}