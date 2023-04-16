# frozen_string_literal: true

class Example
  def initialize(employee_id)
    @employee_id = employee_id
  end
  def call
    ExampleJob.perform_async(@employee_id)
  end
end
