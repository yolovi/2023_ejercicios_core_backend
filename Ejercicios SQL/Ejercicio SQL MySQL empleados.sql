
CREATE DATABASE my_company_database;

CREATE TABLE employees(
id INT AUTO_INCREMENT,
birth_date DATE, 
first_name VARCHAR(100),
last_name VARCHAR(100),
gender CHAR(1),
PRIMARY KEY(id)
);

ALTER TABLE employees ADD salary INT;
ALTER TABLE employees ADD title VARCHAR(50);
ALTER TABLE employees ADD title_date DATE;

INSERT INTO employees (first_name, last_name, gender, birth_date,
salary, title, title_date) values
('Juan', 'Perez', 'M', '1985-01-10', 15000, ' Ingeniero de Software', '2020-03-05'),
('Juan', 'Garcia', 'M', '1990-03-05', 5000, 'Diseñador Gráfico', '2020-03-05'),
('Ana', 'Lopez', 'F', '1988-05-15', 7500, 'Contadora', '2020-01-05'),
('Carlos', 'Rodriguez', 'M', '1982-07-20', 20000, 'Gerente de Ventas', '2019-01-05'),
('Pedro', 'Martinez', 'M', '1992-04-08', 12000, 'Analista de Datos', '2020-04-08'),
('Laura', 'Jimenez', 'F', '1991-09-12', 8500, 'Asistente Administrativo', '2018-09-12'),
('Juan', 'Perez', 'M', '1985-09-12', 9000, 'Desarrollador Web', '2018-09-10'),
('Jose', 'Gomez', 'M', '1989-11-25', 6000, 'Analista Financiero', '2020-09-12'),
('Andrea', 'Herrera', 'F', '1993-02-03', 11500, 'Diseñadora de Interiores', '2020-11-25'),
('Juanita', 'Lopez', 'F', '1987-07-18', 18000, 'Gerente de Recursos Humanos', '2019-02-03'),
('Luis', 'Perez', 'M', '1991-03-06', 14000, 'Ingeniero Civil', '2020-01-25'),
('Sara', 'Ramirez', 'F', '1995-04-21', 5500, 'Asistente de Marketing', '2020-04-08'),
('Patricia', 'Ramirez', 'F', '1984-11-11', 25000, 'Director de Operaciones', '2019-04-08'),
('Marta', 'Gonzalez', 'F', '1990-06-30', 9500, 'Programadora', '2020-11-25'),
('Manuel', 'Rodriguez', 'M', '1992-12-09', 30000, 'Director de Marketing', '2019-12-09');

SELECT*FROM employees;

SELECT * FROM employees WHERE id = 4 AND first_name = 'Marcos'AND last_name = 'Rodriguez'AND birth_date = '1982-07-20';

UPDATE employees SET first_name = 'Pau' WHERE id = 4 AND last_name = 'Rodriguez'AND birth_date = '1982-07-20';

SELECT * FROM employees WHERE salary > 20000;
SELECT * FROM employees WHERE salary < 10000;
SELECT * FROM employees WHERE salary BETWEEN 14000 AND 50000;
SELECT COUNT(id) FROM employees;
SELECT COUNT(*) AS total_employees FROM employees;
SELECT title FROM employees WHERE (title_date  BETWEEN '2019-01-01' AND '2019-12-31');
SELECT title FROM employees WHERE title_date LIKE '2019%';

SELECT UCASE(first_name) FROM employees;

SELECT DISTINCT first_name FROM employees;

DELETE FROM employees WHERE id = 5;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM employees WHERE salary > 20000;













