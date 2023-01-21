# frozen_string_literal: true

module Employees
  class CardIdComponent < ViewComponent::Base
    with_collection_parameter :employee
    attr_reader :employee

    def initialize(employee:)
      @employee = employee
    end
  end
end
