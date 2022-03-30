# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :people

  scope :billable, -> { where(billable: true) }

  # def self.billable
  #   where(billable: true)
  # end
end
