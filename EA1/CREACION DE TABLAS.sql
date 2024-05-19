CREATE TABLE "estado_civil" (
  "estado_civil_id" SERIAL primary KEY,
  "nombre" varchar(50) NOT null
);


CREATE TABLE "estado_formacion" (
  "estado_formacion_id" SERIAL primary KEY,
  "nombre" varchar(50) NOT NULL,
  "fecha_creacion" timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  "fecha_actualizacion" timestamp(6) NOT NULL DEFAULT current_timestamp(6) 
);

CREATE TABLE "tipo_documento" (
  "tipo_documento_id" SERIAL primary KEY,
  "nombre" varchar(50) NOT null
);


CREATE TABLE funcionarios (
  funcionario_id serial PRIMARY KEY,
  numero_identificacion bigint NOT NULL,
  nombres varchar(255) NOT NULL,
  apellidos varchar(255) NOT NULL,
  genero varchar(20) NOT NULL,
  direccion varchar(255) NOT NULL,
  telefono bigint NOT NULL,
  fecha_nacimiento date NOT NULL,
  fecha_creacion timestamp(6) DEFAULT current_timestamp(6) NOT NULL,
  fecha_actualizacion timestamp(6) DEFAULT current_timestamp(6) NOT NULL,
  estado_civil_id int NOT NULL,
  tipo_documento_id int NOT NULL,
  CONSTRAINT funcionarios_tipo_documento_fk FOREIGN KEY (tipo_documento_id) REFERENCES tipo_documento(tipo_documento_id) ON UPDATE CASCADE,
  CONSTRAINT funcionarios_estado_civil_fk FOREIGN KEY (estado_civil_id) REFERENCES estado_civil(estado_civil_id) ON UPDATE CASCADE,
);


CREATE TABLE "universidad" (
  "universidad_id" SERIAL primary KEY,
  "nombre" varchar(255) NOT null
);

CREATE TABLE "nivel_educativo" (
  "nivel_educativo_id" SERIAL primary KEY,
  "nombre" varchar(255) NOT NULL,
  "fecha_creacion" timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  "fecha_actualizacion" timestamp(6) NOT NULL DEFAULT current_timestamp(6)
);

 CREATE TABLE "rol_grupo_familiar" (
  "rol_id" SERIAL primary key,
  "nombre" varchar(255) NOT NULL
) ;

CREATE TABLE "grupo_familiar" (
  "grupo_familiar_id" SERIAL primary KEY,
  "nombres" varchar(255) NOT NULL,
  "apellidos" varchar(255) NOT NULL,
  "direccion" varchar(255) NOT NULL,
  "telefono" varchar(255) NOT NULL,
  "rol_id" int NOT NULL,
  "fecha_creacion" timestamp NOT NULL DEFAULT current_timestamp(6),
  "fecha_actualizacion" timestamp NOT NULL DEFAULT current_timestamp(6),
  "funcionario_id" int NOT null,
  CONSTRAINT "grupo_familiar_ibfk_1" FOREIGN KEY ("funcionario_id") REFERENCES "funcionarios" ("funcionario_id") ON UPDATE CASCADE,
  CONSTRAINT "grupo_familiar_ibfk_2" FOREIGN KEY ("rol_id") REFERENCES "rol_grupo_familiar" ("rol_id") ON UPDATE CASCADE
) ;

CREATE TABLE "formacion_academica" (
  "formacion_academica_id" SERIAL PRIMARY KEY,
  "fecha_inicio" date NOT NULL,
  "fecha_fin" date NOT NULL,
  "estado_formacion_id" int NOT NULL,
  "nivel_educativo_id" int NOT NULL,
  "universidad_id" int NOT NULL,
  "fecha_creacion" timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  "fecha_actualizacion" timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  "funcionario_id" int NOT NULL,
  CONSTRAINT "formacion_academica_ibfk_1" FOREIGN KEY ("funcionario_id") REFERENCES "funcionarios" ("funcionario_id") ON UPDATE CASCADE,
  CONSTRAINT "formacion_academica_ibfk_2" FOREIGN KEY ("universidad_id") REFERENCES "universidad" ("universidad_id") ON UPDATE CASCADE,
  CONSTRAINT "formacion_academica_ibfk_3" FOREIGN KEY ("nivel_educativo_id") REFERENCES "nivel_educativo" ("nivel_educativo_id") ON UPDATE CASCADE,
  CONSTRAINT "formacion_academica_ibfk_4" FOREIGN KEY ("estado_formacion_id") REFERENCES "estado_formacion" ("estado_formacion_id") ON UPDATE CASCADE
);



