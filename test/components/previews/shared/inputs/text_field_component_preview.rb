# frozen_string_literal: true

class Shared::Inputs::TextFieldComponentPreview < ViewComponent::Preview
  layout 'component_preview'

  # @param leading_icon [String]
  # @param validation select { choices: [nil, error, success] }
  # @param label toggle
  # @param hint_text [String]
  def default(leading_icon: nil, label: true, validation: nil, hint_text: nil)
    render(Shared::Inputs::TextFieldComponent.new(leading_icon:, label:, validation:, hint_text:))
  end
end
