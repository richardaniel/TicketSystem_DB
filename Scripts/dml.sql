-- dml.sql
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
