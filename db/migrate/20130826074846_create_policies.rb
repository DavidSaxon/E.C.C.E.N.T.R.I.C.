class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.references :player, index: true
      t.references :setting, index: true
      t.integer :value

      t.timestamps
    end
  end
end
