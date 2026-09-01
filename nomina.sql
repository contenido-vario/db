CREATE DATABASE nomina;
USE nomina;

CREATE TABLE empleado (
	pkEmpleado int(5) PRIMARY KEY,
	apellido varchar(20),
	nombre varchar(15),
	sexo enum('Hombre', 'Mujer'),
	fechaNacimiento  date,
	estadoCivil enum('Soltero','Casado','Viudo','Divorciado','Otro'),
	hijos tinyint(2),
	fkDepartamento int(3),
	fkCargo int(3),
	fechaContrato date,
	sueldo decimal(9,2)
);
CREATE TABLE cargo (
	pkCargo int(3) PRIMARY KEY,
	nomCargo varchar(30)
);

CREATE TABLE departamento (
	pkDepartamento int(3) PRIMARY KEY,
	nomDepartamento varchar(30)
);

ALTER TABLE empleado 
ADD CONSTRAINT cargos_empleados
FOREIGN KEY (fkCargo) REFERENCES cargo(pkCargo)
ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE empleado 
ADD CONSTRAINT deptos_empleados
FOREIGN KEY (fkDepartamento) REFERENCES departamento(pkDepartamento)
ON UPDATE CASCADE ON DELETE RESTRICT;

 INSERT INTO cargo VALUES (1, 'Analista');
 INSERT INTO cargo VALUES (2, 'Asistente');
 INSERT INTO cargo VALUES (3, 'Ejecutivo');
 INSERT INTO cargo VALUES (4, 'Gerente');
 INSERT INTO cargo VALUES (5, 'Oficinista');
 INSERT INTO cargo VALUES (6, 'Programador');
 INSERT INTO cargo VALUES (7, 'Secretaria');
 INSERT INTO cargo VALUES (8, 'Vice Presidente');
 INSERT INTO cargo VALUES (9, 'Técnico');
 INSERT INTO cargo VALUES (10, 'Especialista');

 INSERT INTO departamento VALUES (1, 'Administración');
 INSERT INTO departamento VALUES (2, 'Compras');
 INSERT INTO departamento VALUES (3, 'Contabilidad');
 INSERT INTO departamento VALUES (4, 'Informática');
 INSERT INTO departamento VALUES (5, 'R.R.H.H.');
 INSERT INTO departamento VALUES (6, 'Ventas');
 INSERT INTO departamento VALUES (7, 'Marketing');
 INSERT INTO departamento VALUES (8, 'Finanzas');
 INSERT INTO departamento VALUES (9, 'Recepción');
