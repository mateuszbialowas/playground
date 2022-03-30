# frozen_string_literal: true

class Person < ApplicationRecord
  belongs_to :role

  # scope billable, -> { joins(:role).where(roles: { billable: true }) }
  # scope billable2, -> { joins(:role).merge(Role.billable) }

  def self.billable
    joins(:role).where(roles: { billable: true })
  end

  def self.billable2
    joins(:role).merge(Role.billable)
  end
end
