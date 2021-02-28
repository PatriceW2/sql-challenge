  CREATE TABLE titles
  (
    id VARCHAR(6) NOT NULL,
    title VARCHAR(50),
    PRIMARY KEY(id)
  );
  
    CREATE TABLE departments
  (
    id VARCHAR(66) NOT NULL,
    dept_name VARCHAR(255),
    PRIMARY KEY(id)
  );
  
    CREATE TABLE employees
  (
    id INT NOT NULL,
    emp_title_id VARCHAR(6),
    birth_date VARCHAR(10),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(5),
    hire_date VARCHAR(10),
    PRIMARY KEY(id)
  );
  
    CREATE TABLE salaries
  (
    emp_no INT NOT NULL,
    salary INT,
    PRIMARY KEY(emp_no)
  );
  
  
   CREATE TABLE dept_emp
  (
    emp_no INT NOT NULL,
    dept_no VARCHAR(66) NOT NULL,
    PRIMARY KEY(emp_no, dept_no)
  );
  
    CREATE TABLE dept_manager
  (
    dept_no VARCHAR(66) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY(dept_no, emp_no)
  );
  
  ALTER TABLE employees
    ADD    FOREIGN KEY (emp_title_id)
    REFERENCES titles(id)
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(id)
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(id)
;
    
ALTER TABLE salaries
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(id)
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(id)
;
    
ALTER TABLE dept_manager
    ADD    FOREIGN KEY (dept_no)
    REFERENCES departments(id)
;

