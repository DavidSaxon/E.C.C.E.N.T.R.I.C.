class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :settid
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
