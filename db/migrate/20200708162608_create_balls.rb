class CreateBalls < ActiveRecord::Migration[6.0]
  def change
    create_table :balls do |t|
      t.string :sport
      t.string :shape
      t.integer :diameter

      t.timestamps
    end
  end
end
