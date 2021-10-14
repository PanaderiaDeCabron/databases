-- INSERT

-- CATEGORY (id, category)
INSERT INTO Categories VALUES (1, 'Consumibles');
INSERT INTO Categories VALUES (2, 'Aparatos');
INSERT INTO Categories VALUES (3, 'Decoracion');
INSERT INTO Categories VALUES (4, 'Varios');



-- USERTYPE (id, type of user)
INSERT INTO UserTypes VALUES (1, 'Admin');
INSERT INTO UserTypes VALUES (2, 'Storer');
INSERT INTO UserTypes VALUES (3, 'Client');

-- USER (id, name, password, PK type)

-- 2 Admins
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Rodrigo', 'password123', 1);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Oscar', 'password123', 1);


-- 2 Storers
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Antonio', 'password123', 2);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Dalí', 'password123', 2);


-- 12 Clients
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Melissa', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Alejandro', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Jose', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Pepe', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Tony', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Eduardo', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Isaac', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Carlos', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Julio', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Leonardo', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Saul', 'password123', 3);
INSERT INTO Users (nameUser, passUser, idUserType) VALUES ('Luna', 'password123', 3);

-- PRODUCT (id, name, stock, image (base64), price, PK category)
-- 30 productos

-- Accesories
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Cuernito', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Dona', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Empanada', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Mantecada', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Negrito', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Espejo', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Oreja', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Picon', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Galleta', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Barquillo', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Campechana', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Concha', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Puerquito', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Sema', 20, '', 15, 1);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Empanada', 20, '', 15, 1);

INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Batidora', 50, N'/', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Mezcladora', 35, N'', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Volteadora', , 53'', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Calentadora', 22, N'/', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Enfriadora', 77, N'', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Envolvedora', 13, N'', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Aplastadora', 22, N'/', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Ponchadora', 77, N'', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('Infladora', 13, N'', 15, 2);
INSERT INTO Products (nameProduct, stockProduct, imgProduct, priceProduct, idCategory) VALUES ('HornitoMicro', 22, N'/', 15, 2);

