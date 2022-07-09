class CreateEarningsLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :earnings_levels do |t|
      t.integer :level_number
      t.integer :bottom_limit
      t.integer :top_limit
    end
  end
end
