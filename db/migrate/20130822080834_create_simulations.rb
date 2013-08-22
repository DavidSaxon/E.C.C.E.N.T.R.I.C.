class CreateSimulations < ActiveRecord::Migration
  def change
    create_table :simulations do |t|
      t.integer :simuid
      t.string :name

      t.timestamps
    end
  end
end
