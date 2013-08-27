class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :name
      t.integer :group
      t.string :pathname

      t.timestamps
    end
  end
end
