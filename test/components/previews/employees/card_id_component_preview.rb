# frozen_string_literal: true

module Employees
  class CardIdComponentPreview < ViewComponent::Preview
    layout 'component_preview'

    def default
      render(Employees::CardIdComponent.new(employee: Employee.first))
    end
  end
end
