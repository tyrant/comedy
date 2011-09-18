class AddVenueDatePhoneUrlToGig < ActiveRecord::Migration
  def self.up
    change_table :gigs do |t|
      t.string :venue
      t.datetime :date
      t.string :phone
      t.string :url
      t.float :lat
      t.float :lng
    end
  end

  def self.down
    change_table :gigs do |t|
      t.remove :venue
      t.remove :date
      t.remove :phone
      t.remove :url
      t.remove :lat
      t.remove :lng
    end
  end
end
