# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :manager, class_name: 'Employee', optional: true
end
