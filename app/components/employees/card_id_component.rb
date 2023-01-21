# frozen_string_literal: true

module Employees
  class CardIdComponent < ViewComponent::Base
    attr_reader :employee

    def initialize(employee:)
      @employee = employee
    end
  end
end
