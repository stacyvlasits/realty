class AddNameToResources < ActiveRecord::Migration
  def self.up
    add_column :resources, :title, :string, :limit => 100
  end

  def self.down
    remove_column :resources, :title
  end
end
