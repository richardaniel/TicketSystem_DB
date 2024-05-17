-- init.sql
-- Crear tablas
CREATE TABLE Usuario (
    UsuarioID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Correo VARCHAR(100),
    Departamento VARCHAR(50)
);

CREATE TABLE Ingeniero (
    IngenieroID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Correo VARCHAR(100),
    Experiencia VARCHAR(200),
    CargaLaboral INT
);

CREATE TABLE Categoria (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE Caso (
    CasoID INT AUTO_INCREMENT PRIMARY KEY,
    UsuarioID INT,
    IngenieroID INT,
    CategoriaID INT,
    FechaApertura DATETIME,
    Estado VARCHAR(50),
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
    FOREIGN KEY (IngenieroID) REFERENCES Ingeniero(IngenieroID),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID)
);

CREATE TABLE Procedimiento (
    ProcedimientoID INT AUTO_INCREMENT PRIMARY KEY,
    CasoID INT,
    Descripcion TEXT,
    Fecha DATETIME,
    IngenieroID INT,
    FOREIGN KEY (CasoID) REFERENCES Caso(CasoID),
    FOREIGN KEY (IngenieroID) REFERENCES Ingeniero(IngenieroID)
);

CREATE TABLE Calificacion (
    CalificacionID INT AUTO_INCREMENT PRIMARY KEY,
    CasoID INT,
    UsuarioID INT,
    Puntuacion INT,
    Comentarios TEXT,
    FOREIGN KEY (CasoID) REFERENCES Caso(CasoID),
    FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID)
);

-- Insertar datos de ejemplo en las tablas
INSERT INTO Usuario (Nombre, Correo, Departamento) VALUES
('Juan Perez', 'juan.perez@example.com', 'Ventas'),
('Maria Lopez', 'maria.lopez@example.com', 'Marketing');

INSERT INTO Ingeniero (Nombre, Correo, Experiencia, CargaLaboral) VALUES
('Carlos Sanchez', 'carlos.sanchez@example.com', 'Redes, Hardware', 5),
('Ana Torres', 'ana.torres@example.com', 'Software', 3);

INSERT INTO Categoria (Nombre) VALUES
('Problema de Redes'),
('Problema de Hardware'),
('Problema de Software');

INSERT INTO Caso (UsuarioID, IngenieroID, CategoriaID, FechaApertura, Estado) VALUES
(1, 1, 1, NOW(), 'Abierto'),
(2, 2, 3, NOW(), 'Abierto');

INSERT INTO Procedimiento (CasoID, Descripcion, Fecha, IngenieroID) VALUES
(1, 'Diagnóstico inicial de redes', NOW(), 1),
(2, 'Instalación de software', NOW(), 2);

INSERT INTO Calificacion (CasoID, UsuarioID, Puntuacion, Comentarios) VALUES
(1, 1, 4, 'Buen servicio, pero tardó un poco'),
(2, 2, 5, 'Excelente atención y rápido');
