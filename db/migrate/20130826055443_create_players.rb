class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :roletitle
      t.references :user, index: true
      t.references :simulation, index: true

      t.timestamps
    end
  end
end
