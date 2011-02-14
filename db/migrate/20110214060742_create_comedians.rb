class CreateComedians < ActiveRecord::Migration
  def self.up
    create_table :comedians do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :comedians
  end
end
