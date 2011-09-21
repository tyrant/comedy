class CreateVenueModelAndMoveSelectedGigAttributesToIt < ActiveRecord::Migration
  def self.up
    change_table :gigs do |t|
      t.remove :venue
      t.references :venue
      t.remove :lat
      t.remove :lng
      t.remove :phone
      t.remove :url
    end
    
    change_table :venues do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.string :phone
      t.string :url
    end
  end

  def self.down
    change_table :gigs do |t|
      t.remove :venue_id
      t.string :venue
      t.float :lat
      t.float :lng
      t.string :phone
      t.string :url
    end
    
    change_table :venues do |t|
      t.remove :name
      t.remove :lat
      t.remove :lng
      t.remove :phone
      t.remove :url
    end
  end
end
