class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, :null => false, :default => "Unknown"
  end
end
