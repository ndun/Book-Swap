class DeleteOldPersonTable < ActiveRecord::Migration
  def self.up
    drop_table :people
  end

  def self.down
        drop_table :people
  end
end
