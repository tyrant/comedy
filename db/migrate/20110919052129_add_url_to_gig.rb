class AddUrlToGig < ActiveRecord::Migration
  def self.up
    add_column :gigs, :url, :string
  end

  def self.down
    remove_column :gigs, :url
  end
end
