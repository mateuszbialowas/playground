# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    full_name { FFaker::Name.name }
  end
end
