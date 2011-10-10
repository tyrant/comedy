class ChangeVideoReferenceFromGigToComedian < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.remove :gig_id
      t.references :comedian
    end
  end

  def self.down
    change_table :videos do |t|
      t.remove :comedian_id
      t.references :gig
    end
  end
end
