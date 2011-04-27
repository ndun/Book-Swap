class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :Title
      t.string :Author

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
