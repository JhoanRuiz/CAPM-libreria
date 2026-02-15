using { managed } from '@sap/cds/common';
namespace modelo;

entity Libros: managed {
    key ID : Integer;
    titulo : String(250);
    autor: Association to Autores;
    stock: Integer;
    price  : Decimal;
    moneda : String(3);
}

entity Autores: managed {
    Key ID: Integer;
    nombre: String(100); 
    libros: Association to many Libros on libros.autor = $self;
}