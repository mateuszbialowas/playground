# frozen_string_literal: true

# https://ruby-doc.org/stdlib-2.5.1/libdoc/singleton/rdoc/Singleton.html
module Patterns
  module Creational
    # Learn Singleton, Creation Design Pattern
    class SingletonService
      include Singleton

      def call
        Rails.logger.debug 'SingletonService'
      end
    end
  end
end
