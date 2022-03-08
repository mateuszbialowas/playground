# frozen_string_literal: true

module Patterns
  module Structural
    class TextDocument
      attr_accessor :elements

      def load
        elements.each(&:load)
      end

      def render
        elements.each(&:render)
      end
    end
  end
end
