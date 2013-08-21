class CreateMapPoints < ActiveRecord::Migration
  def change
    create_table :map_points do |t|
      t.string :title
      t.string :description
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
