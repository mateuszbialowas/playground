class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :budget
      t.date :start_date
      t.date :end_date
    end
  end
end
