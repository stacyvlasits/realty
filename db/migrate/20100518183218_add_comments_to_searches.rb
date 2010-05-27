class AddCommentsToSearches < ActiveRecord::Migration
  def self.up
        add_column :searches, :comment, :text
      end

  def self.down
    remove_column :searches, :comment  
  end
end
