CREATE DATABASE ComicsStore
USE ComicsStore
CREATE TABLE Clientes(
    id_clientes BIGINT IDENTITY(1, 1) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL,
    pass VARCHAR(255) NOT NULL
);

CREATE TABLE Compras(
    id_compra BIGINT IDENTITY(10, 1) PRIMARY KEY,
    id_cliente BIGINT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_clientes),
    fecha_compra DATE,
    total DECIMAL(5, 2)
);

CREATE TABLE Comics(
    id_comic BIGINT IDENTITY(10, 2) PRIMARY KEY,
    nombre VARCHAR(255),
    anio TINYINT,
    precio DECIMAL(10, 2)
);

CREATE TABLE Inventario(
    id_inventario BIGINT IDENTITY(1, 1) PRIMARY KEY,
    id_comic BIGINT,
    cantidad_disponible INT,
    disponibilidad BINARY,
    FOREIGN KEY (id_comic) REFERENCES Comics(id_comic)
);

CREATE TABLE Comic_Compras(
    id_CC BIGINT IDENTITY(1, 1) PRIMARY KEY,
    cantidad TINYINT,
    id_compra BIGINT,
    id_comic BIGINT,
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),
    FOREIGN KEY (id_comic) REFERENCES Comics(id_comic)
);