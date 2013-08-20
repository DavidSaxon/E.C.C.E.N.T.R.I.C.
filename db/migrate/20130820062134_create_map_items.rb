class CreateMapItems < ActiveRecord::Migration
  def change
    create_table :map_items do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
