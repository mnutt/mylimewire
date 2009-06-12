class RenameHostToUsername < ActiveRecord::Migration
  def self.up
	  rename_column :users, :host, :username
  end

  def self.down
  end
end
