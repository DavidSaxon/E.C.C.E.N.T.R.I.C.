class RemoveSettIdFromSetting < ActiveRecord::Migration
  def change
  	remove_column :settings, :settid, :integer
  end
end
