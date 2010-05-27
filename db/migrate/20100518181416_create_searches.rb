class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.string :search
      t.string :title
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :searches
  end
end
