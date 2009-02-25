class AddPortToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :port, :integer
  end

  def self.down
    remove_column :users, :port
  end
end
