# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :department
      t.string :position
      t.string :email
      t.string :phone
      t.date :birthday
      t.string :location
      t.text :avatar_data

      t.timestamps
    end
  end
end
