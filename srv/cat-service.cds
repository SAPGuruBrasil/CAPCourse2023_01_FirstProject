using my.livraria as my from '../db/data-model';

service ServicoCatalogo {
  
  entity Livros     as projection on my.Livros;
  entity Autores    as projection on my.Autores;
  entity Pedidos    as projection on my.Pedidos;

}