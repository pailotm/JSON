/* +1) - Таблица employees
Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);

/*=============================================================================================*/
select * from employees;
--этот запрос вне задания
--drop table employees; 
--удалить таблицу employees(это вне задания)

/*=============================================================================================*/
/* +2) - Наполнить таблицу employee 70 строками.*/

insert into employees(employee_name)
values ('pailot1'),('pailot2'), ('pailot3'), ('pailot4'), ('pailot5'), ('pailot6'), ('pailot7'),
('pailot8'),('pailot9'), ('pailot10'), ('pailot11'), ('pailot12'), ('pailot13'), ('pailot14'), ('pailot15'),
('pailot16'),('pailot17'), ('pailot18'), ('pailot19'), ('pailot20'), ('pailot21'), ('pailot22'), ('pailot23'),
('pailot24'),('pailot25'), ('pailot26'), ('pailot27'), ('pailot28'), ('pailot29'), ('pailot30'), ('pailot31'),
('pailot32'), ('pailot33'), ('pailot34'), ('pailot35'), ('pailot36'), ('pailot37'), ('pailot38'), ('pailot39'),
('pailot40'),('pailot41'), ('pailot42'), ('pailot43'), ('pailot44'), ('pailot45'), ('pailot46'), ('pailot47'),
('pailot48'),('pailot49'), ('pailot50'), ('pailot51'), ('pailot52'), ('pailot53'), ('pailot54'), ('pailot55'),
('pailot56'),('pailot57'), ('pailot58'), ('pailot59'), ('pailot60'), ('pailot61'), ('pailot62'), ('pailot63'),
('pailot64'),('pailot65'), ('pailot66'), ('pailot67'), ('pailot68'), ('pailot69'), ('pailot70');

/*=======================================================================================================*/
/* +3) - Таблица salary
Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null */

create table salary(
	id serial primary key,
	monthly_salary Varchar(50) not null
);

/*================================================================================================*/
select * from salary;
--этот запрос вне знадания

/*=================================================================================================*/
/* +4) - Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500*/

insert into salary(monthly_salary)
values (1000), (1100), (1200), (1300), (1400), (1500), (1600), (1700), (1800), (1900),
(2000), (2100), (2200), (2300), (2400), (2500);

/*================================================================================================*/
--drop table salary; удалить таблицу salary(это вне задания)

/*================================================================================================*/
/* +5) - Таблица employee_salary
Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null */

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/*=================================================================================================*/
select * from employee_salary;
--этот запрос вне задания
--drop table employee_salary;
--удалить таблицу employee_salary(это вне задания)

/*=================================================================================================*/
/* +6) - Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

insert into employee_salary(employee_id, salary_id)
values (3, 7), (1, 4), (5, 9), (40, 13), (23, 4), (11, 2), 
(52, 10), (15, 13), (26, 4), (16, 1), (33, 7), (60, 7), 
(69, 4), (68, 9), (67, 13), (66, 4), (65, 2), (64, 10), 
(63, 13), (62, 4), (61, 1), (34, 7), (8, 7), (2, 4), 
(6, 9), (41, 13), (24, 4), (12, 2), (53, 10), (18, 13), 
(27, 4), (17, 1), (35, 7), (9, 7), (4, 4), (7, 9), 
(42, 13), (25, 4), (13, 2), (54, 10);

/*===================================================================================================*/
/* +7) - Таблица roles
Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique*/

create table roles(
	id serial primary key,
	role_name int not null unique
);

/*====================================================================================================*/
select * from roles;
--этот запрос вне задания
--drop table roles;
--удалить таблицу roles(это вне задания)

/*==============================================================================================*/
/* +8) - Поменять тип столба role_name с int на varchar(30)*/

alter table roles alter column role_name type varchar(30)

/*===============================================================================================*/
/* +9) - Наполнить таблицу roles 20 строками:*/

insert into roles(role_name)
values('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'),
('Junior Java developer'), ('Middle Java developer'), ('Senior Java developer'),
('Junior JavaScript developer'), ('Middle JavaScript developer'),('Senior JavaScript developer'),
('Junior Manual QA engineer'), ('Middle Manual QA engineer'), ('Senior Manual QA engineer'),
('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'),
('Junior Automation QA engineer'), ('Middle Automation QA engineer'),('Senior Automation QA engineer');

/*==========================================================================================================*/
select * from roles;
select * from employees;
--это запрос вне задания

/*=========================================================================================================*/
/* +10) - Таблица roles_employee
Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)*/

create table roles_employee(
	id serial primary key, 
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id) 
		references roles(id));
	
/*==============================================================================================*/
select * from roles_employee;
--это запрос вне задания
--delete from roles_employee
--where id in(1,2,3,4,5,6,7,8,9,10,11,12);

--drop table roles_employee;
--удалить таблицу roles_employee(это вне задания)

/*==============================================================================================*/
/* +11) - Наполнить таблицу roles_employee 40 строками:*/

insert into roles_employee(employee_id, role_id)
values(7, 2), (20, 4), (3, 9), (5, 13), (23, 4), (11, 2),(10, 9), (22, 13), (21, 3), (34, 4),
	(6, 7), (27, 4), (17, 1), (35, 7), (9, 7), (4, 4), (37, 9), (42, 13), (25, 4), (13, 2),
	(54, 10), (33, 7), (60, 7), (69, 4), (68, 9), (67, 13), (66, 4), (65, 2), (64, 10), (63, 13),
	(62, 4), (53, 7), (1, 4), (45, 9), (40, 13), (43, 4), (31, 2), (52, 10), (15, 13), (26, 4), (16, 1);


