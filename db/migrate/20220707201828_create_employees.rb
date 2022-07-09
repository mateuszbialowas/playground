# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :last_name
      t.integer :salary
      t.date :hire_date
      t.belongs_to :department, null: false, foreign_key: true
      t.belongs_to :manager, class_name: 'Employee', optional: true, foreign_key: { to_table: :employees }
      t.integer :bonus
      t.string :job_position
    end
  end
end
