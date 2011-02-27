class AddUrlToVideos < ActiveRecord::Migration
  def self.up
    add_column :videos, :url, :string
  end

  def self.down
    remove_column :videos, :url
  end
end
