CREATE TABLE IF NOT EXISTS employees (
	employee_id SERIAL PRIMARY KEY,
	employee_name varchar(255) not null,
	department_id integer not null references departments(department_id)
);

CREATE TABLE IF NOT EXISTS departments (
	department_id SERIAL PRIMARY KEY,
	department_name varchar(255) not null,
	boss_id int unique not null references bosses(boss_id)
);

CREATE TABLE IF NOT EXISTS bosses (
	boss_id SERIAL PRIMARY KEY,
	bosses_name varchar(255) not null
);