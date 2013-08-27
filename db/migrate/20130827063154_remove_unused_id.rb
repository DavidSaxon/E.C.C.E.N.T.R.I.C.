class RemoveUnusedId < ActiveRecord::Migration
  def change
  	remove_column :users, :userid, :integer
  	remove_column :simulations, :simuid, :integer
  end
end
