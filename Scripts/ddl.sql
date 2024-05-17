-- ddl.sql
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
