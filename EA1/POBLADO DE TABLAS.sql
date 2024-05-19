--POBLADO DE DATOS


INSERT INTO estado_civil (nombre)
VALUES ('Soltero'),
('Casado'),
('Divorciado'),
('Viudo');


insert into estado_formacion (nombre)
Values('Activo'),
('Retirado'),
('Graduado'),
('Suspendido');

insert INTO tipo_documento (nombre)
VALUES ('Cédula de Ciudadanía'),
       ('Tarjeta de Identidad'),
       ('Cédula de Extranjería'),
       ('Pasaporte');
      
INSERT INTO funcionarios (numero_identificacion, nombres, apellidos, genero, direccion, telefono, fecha_nacimiento, estado_civil_id, tipo_documento_id)
	values 
	(1082856123, 'MILENA', 'MARTINEZ', 'FEMENINO', 'Calle 123, Medellin', 1234567890, '1990-05-15', 1, 1),
	(4334522, 'RAFAEL', 'CONTRERAS', 'MASCULINO', 'Avenida 456, El Bagre', 9876543210, '1988-09-20', 2, 1),
	(8765182, 'MERCEDES', 'MEZA', 'FEMENINO', 'Calle 789, MANIZALES', 1122334455, '1985-03-10', 2, 2);


INSERT INTO universidad (nombre) VALUES 
('Universidad Nacional de Colombia'),
('Universidad de los Andes'),
('Institución Universitaria Digital de Antioquia'),
('Universidad de Medellin');

INSERT INTO nivel_educativo (nombre) VALUES 
('Primaria'),
('Secundaria'),
('Técnico'),
('Universitario');

INSERT INTO rol_grupo_familiar (nombre) VALUES 
('Padre'),
('Madre'), 
('Hijo'), 
('Tio'), 
('Abuelo'), 
('Hermano');

INSERT INTO grupo_familiar (nombres, apellidos, direccion, telefono, rol_id, funcionario_id)
VALUES ('Juan', 'Pérez', 'Calle 123, Ciudad', '123456789', 1, 1),
       ('María', 'Gómez', 'Avenida 456, Ciudad', '987654321', 2, 2),
       ('Carlos', 'López', 'Carrera 789, Otra Ciudad', '1122334455', 3, 3);

INSERT INTO formacion_academica (fecha_inicio, fecha_fin, estado_formacion_id, nivel_educativo_id, universidad_id, funcionario_id)
VALUES 
('2020-09-01', '2024-06-30', 1, 4, 1, 1),
('2018-08-15', '2022-05-30', 2, 4, 2, 2),
('2017-07-01', '2021-04-25', 3, 3, 3, 3);



