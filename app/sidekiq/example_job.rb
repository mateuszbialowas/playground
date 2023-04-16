# frozen_string_literal: true

class ExampleJob
  include Sidekiq::Job

  def perform(employee_id)
    employee = Employee.find(employee_id)

    employee.update!(position: 'CEO')
  end
end
