CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE Usuarios ( 
  nombre VARCHAR(30), 
  clave VARCHAR(32)
);

INSERT INTO Usuarios (nombre, clave) VALUES ('David', MD5('Davis23')); 
INSERT INTO Usuarios (nombre, clave) VALUES ('Brayan', MD5('Brayan456')); 
INSERT INTO Usuarios (nombre, clave) VALUES ('lucy', MD5('Lucy985')); 
INSERT INTO Usuarios (nombre, clave) VALUES ('Dayana', MD5('Dayana456')); 
INSERT INTO Usuarios (nombre, clave) VALUES ('Natalia', MD5('Natalia345'));

SELECT * FROM Usuarios;

CREATE TABLE Usuarios_SHA ( 
  nombre VARCHAR(30),
  clave VARCHAR(40)
);

INSERT INTO Usuarios_SHA (nombre, clave) VALUES ('Natalia', SHA1('Nata324')); 
INSERT INTO Usuarios_SHA (nombre, clave) VALUES ('David', SHA1('Da1995')); 
INSERT INTO Usuarios_SHA (nombre, clave) VALUES ('Carlos', SHA1('Cmunos23')); 
INSERT INTO Usuarios_SHA (nombre, clave) VALUES ('leonardo', SHA1('leo5345')); 
INSERT INTO Usuarios_SHA (nombre, clave) VALUES ('Juan', SHA1('234435'));

SELECT * FROM Usuarios_SHA;

CREATE TABLE Usuarios_AES ( 
  nombre VARCHAR(30),
  clave BLOB
);

INSERT INTO Usuarios_AES (nombre, clave) VALUES ('Eduardo', AES_ENCRYPT('2343', 'sala'));
INSERT INTO Usuarios_AES (nombre, clave) VALUES ('Nicholl', AES_ENCRYPT('col567', 'comedor'));
INSERT INTO Usuarios_AES (nombre, clave) VALUES ('Corzo', AES_ENCRYPT('54cor', 'cocina'));
INSERT INTO Usuarios_AES (nombre, clave) VALUES ('Ana', AES_ENCRYPT('profe4535', 'cama'));
INSERT INTO Usuarios_AES (nombre, clave) VALUES ('Pedro', AES_ENCRYPT('tra457', 'techo'));

SELECT * FROM Usuarios_AES;

SELECT nombre, CAST(AES_DECRYPT(clave, 'sala') AS CHAR) AS ClaveDesencriptada FROM Usuarios_AES;
SELECT nombre, CAST(AES_DECRYPT(clave, 'comedor') AS CHAR) AS ClaveDesencriptada FROM Usuarios_AES;
SELECT nombre, CAST(AES_DECRYPT(clave, 'cocina') AS CHAR) AS ClaveDesencriptada FROM Usuarios_AES;
SELECT nombre, CAST(AES_DECRYPT(clave, 'cama') AS CHAR) AS ClaveDesencriptada FROM Usuarios_AES;
SELECT nombre, CAST(AES_DECRYPT(clave, 'techo') AS CHAR) AS ClaveDesencriptada FROM Usuarios_AES;
