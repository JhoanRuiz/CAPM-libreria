using { modelo as modelo } from '../db/libreria';

service Catalogo_Libreria {
  
    entity Libro as projection on modelo.Libros
    excluding {createdBy, modifiedBy };
    entity Autor as projection on modelo.Autores
    excluding {createdBy, modifiedBy };

}
