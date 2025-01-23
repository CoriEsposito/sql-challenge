create table Departments (
Department_Number varchar not null,
Department_Name varchar,
primary key (Department_Number)
);

create table Department_Employees (
Employee_Number int not null,
Department_Number varchar not null,
primary key (Employee_Number, Department_Number)
);

create table Department_Manager (
Department_Number varchar not null,
Employee_Number int not null,
primary key (Employee_Number),
foreign key (Department_Number) references Departments(Department_Number)
);

create table Titles (
Title_ID varchar not null,
Title varchar,
primary key (Title_ID)
);

create table Salaries (
Employee_Number int not null,
Salary int,
primary key (Employee_Number)
);

create table Employees (
Employee_Number int not null,
Employee_Title_ID varchar not null,
Birth_Date varchar,
First_Name varchar,
Last_Name varchar,
Sex varchar,
Hire_Date varchar,
primary key (Employee_Number),
foreign key (Employee_Title_ID) references Titles(Title_ID)
);

select * from Departments;
select * from Department_Employees;
select * from Department_Manager;
select * from Titles;
select * from Salaries;
select * from Employees;
