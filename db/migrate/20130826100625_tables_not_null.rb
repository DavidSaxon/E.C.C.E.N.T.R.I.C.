class TablesNotNull < ActiveRecord::Migration
  def change


    Player.update_all({:roletitle => ""}, {:roletitle => nil})
  	change_column :players, :roletitle, :string, :default => "", :null => false

  	Setting.update_all({:title => ""}, {:title => nil})
  	change_column :settings, :title, :string, :default => "", :null => false

  	Simulation.update_all({:name => ""}, {:name => nil})
  	change_column :simulations, :name, :string, :default => "", :null => false

  	User.update_all({:username => ""}, {:username => nil})
  	change_column :users, :username, :string, :default => "", :null => false

  	Setting.update_all({:description => ""}, {:description => nil})
  	change_column :settings, :description, :text, :default => "", :null => false

  	Player.update_all({:user_id => ""}, {:user_id => nil})
  	change_column :players, :user_id, :integer, :default => 0, :null => false

  	Player.update_all({:simulation_id => ""}, {:simulation_id => nil})
  	change_column :players, :simulation_id, :integer, :default => 0, :null => false

  	Policy.update_all({:player_id => ""}, {:player_id => nil})
  	change_column :policies, :player_id, :integer, :default => 0, :null => false

  	Policy.update_all({:setting_id => ""}, {:setting_id => nil})
  	change_column :policies, :setting_id, :integer, :default => 0, :null => false

  	Policy.update_all({:value => ""}, {:value => nil})
  	change_column :policies, :value, :integer, :default => 0, :null => false

  	Setting.update_all({:settid => ""}, {:settid => nil})
  	change_column :settings, :settid, :integer, :default => 0, :null => false

  	Simulation.update_all({:simuid => ""}, {:simuid => nil})
  	change_column :simulations, :simuid, :integer, :default => 0, :null => false

  	User.update_all({:userid => ""}, {:userid => nil})
  	change_column :users, :userid, :integer, :default => 0, :null => false
  end
end
