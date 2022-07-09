# frozen_string_literal: true

# Enter the name and salary of each employee, sort the data smaller by hire date.
Employee.order(hire_date: :desc).pluck(:last_name, :salary)

# Employee Pluck (0.3ms)  SELECT "employees"."last_name", "employees"."salary" FROM "employees" ORDER BY "employees"."hire_date" DESC

# Ex2
# Determine for each employee his earnings(salary + bonus).
# Assign label total.
# Write out the name and designed sum.

Employee.pluck(:last_name, :salary, :bonus).map { |e| [e[0], e[1] + e[2]] }

Employee.group(:id).sum('salary + bonus').pluck(:last_name, :sum)
Employee.sum('salary + bonus').group(:id)
# SELECT id, SUM(salary + bonus)
# FROM employees
# group by id;
sql = <<-SQL
  SELECT SUM(salary + bonus)
  FROM employees
  group by id;
SQL

# Examine the SQL query and the result.

result = Employee.connection.select_all("SELECT SUM(salary + bonus) AS total, last_name
                              FROM employees
                              group by id;
                              ").to_a
