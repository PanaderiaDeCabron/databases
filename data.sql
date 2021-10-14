-- INSERT

-- CATEGORY (id, category)
INSERT INTO Categorias VALUES (1, 'Consumibles');
INSERT INTO Categorias VALUES (2, 'Aparatos');
INSERT INTO Categorias VALUES (3, 'Decoracion');
INSERT INTO Categorias VALUES (4, 'Varios');



-- USERTYPE (id, type of user)
INSERT INTO TipoUsuario VALUES (1, 'Admin');
INSERT INTO TipoUsuario VALUES (2, 'Storer');
INSERT INTO TipoUsuario VALUES (3, 'Client');

-- USER (id, name, password, PK type)

-- 2 Admins
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Rodrigo', 'password123', 1);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Oscar', 'password123', 1);


-- 2 Storers
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Antonio', 'password123', 2);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Dalí', 'password123', 2);


-- 12 Clients
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Melissa', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Alejandro', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Jose', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Pepe', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Tony', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Eduardo', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Isaac', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Carlos', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Julio', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Leonardo', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Saul', 'password123', 3);
INSERT INTO Usuario (NombreUsr, passUsr, ID_Usuario) VALUES ('Luna', 'password123', 3);

-- PRODUCT (id, name, stock, image (base64), price, PK category)
-- 30 productos

-- Accesories
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Cuernito', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Dona', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Empanada', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Mantecada', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Negrito', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Espejo', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Oreja', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Picon', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Galleta', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Barquillo', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Campechana', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Concha', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Puerquito', 20, '', 15, 1);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Sema', 20, ''I 15, 1);iaINSERT INTO Products (Nombre, Stock, ImagenProd, Precio, idCategory) VALUES ('Empanada', 20, '', 15, 1);

INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Batidora', 50, N'/', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Mezcladora', 35, N'', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Volteadora', , 53'', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Calentadora', 22, N'/', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Enfriadora', 77, N'', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Envolvedora', 13, N'', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Aplastadora', 22, N'/', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Ponchadora', 77, N'', 15, 2);
INSERT INTO Products (Nombre, Stock, ImagenProd, Precio, IdCategoria) VALUES ('Infladora', 13, N''I 15, 2);iaINSERT INTO Products (Nombre, Stock, ImagenProd, Precio, idCategory) VALUES ('HornitoMicro', 22, N'/', 15, 2);

