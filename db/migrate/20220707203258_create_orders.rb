class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :employee, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.integer :number_of_hours
      t.integer :hourly_rate
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
