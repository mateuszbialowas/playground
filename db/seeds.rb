# frozen_string_literal: true

# Create departments
Department.create(name: 'IT', location: 'London')
Department.create(name: 'HR', location: 'New York')
Department.create(name: 'Sales', location: 'Paris')
Department.create(name: 'Marketing', location: 'Berlin')
Department.create(name: 'Finance', location: 'Tokyo')
Department.create(name: 'Accounting', location: 'London')

# Create Earnings Levels
EarningsLevel.create(level_number: 1, bottom_limit: 0, top_limit: 10_000)
EarningsLevel.create(level_number: 2, bottom_limit: 10_001, top_limit: 50_000)
EarningsLevel.create(level_number: 3, bottom_limit: 50_001, top_limit: 100_000)
EarningsLevel.create(level_number: 4, bottom_limit: 100_001, top_limit: 500_000)

# Create Employees
Employee.create(last_name: 'Smith', salary: 10_000, hire_date: '2020-01-01', department_id: 1, manager_id: nil,
                bonus: 0, job_position: 'Developer')
Employee.create(last_name: 'Jones', salary: 50_000, hire_date: '2020-01-01', department_id: 2, manager_id: nil,
                bonus: 0, job_position: 'Accountant')
Employee.create(last_name: 'Williams', salary: 100_000, hire_date: '2020-01-01', department_id: 3, manager_id: nil,
                bonus: 0, job_position: 'Salesman')
Employee.create(last_name: 'Brown', salary: 500_000, hire_date: '2020-01-01', department_id: 4, manager_id: nil,
                bonus: 0, job_position: 'Marketing Manager')
Employee.create(last_name: 'Davis', salary: 100_000, hire_date: '2020-01-01', department_id: 5, manager_id: nil,
                bonus: 0, job_position: 'Finance Manager')

# Create Projects
Project.create(name: 'Project 1', budget: 100_000)
Project.create(name: 'Project 2', budget: 200_000)
Project.create(name: 'Project 3', budget: 300_000)
Project.create(name: 'Project 4', budget: 400_000)
Project.create(name: 'Project 5', budget: 500_000)

# Create Orders
Order.create(employee_id: 1, project_id: 1, number_of_hours: 100, hourly_rate: 37, start_date: '2020-01-01',
             end_date: '2020-01-01')
Order.create(employee_id: 2, project_id: 2, number_of_hours: 200, hourly_rate: 37, start_date: '2020-01-01',
             end_date: '2020-01-01')
Order.create(employee_id: 3, project_id: 3, number_of_hours: 300, hourly_rate: 37, start_date: '2020-01-01',
             end_date: '2020-01-01')
Order.create(employee_id: 4, project_id: 4, number_of_hours: 400, hourly_rate: 37, start_date: '2020-01-01',
             end_date: '2020-01-01')
