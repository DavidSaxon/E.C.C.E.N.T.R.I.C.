class AddAttributesToSettings < ActiveRecord::Migration
  def change
  	add_column :settings, :lin_emmision, :float, :default => 1
  	add_column :settings, :lin_supply, :float, :default => 1
  	add_column :settings, :lin_demand, :float, :default => 1
  end
end
