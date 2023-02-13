# frozen_string_literal: true

module Shared
  module Inputs
    class TextFieldComponent < ViewComponent::Base
      include InlineSvg::ActionView::Helpers
      # def initialize(leading_icon: nil, trailing_icon: nil, **options)
      #   @leading_icon = leading_icon
      #   @trailing_icon = trailing_icon
      #   @options = options
      # end

      def initialize(leading_icon: nil, label: true, validation: nil, hint_text: nil)
        @leading_icon = leading_icon
        @label = label
        @validation = validation
        @hint_text = hint_text
      end

      private

      attr_reader :leading_icon, :label, :validation, :hint_text
    end
  end
end
