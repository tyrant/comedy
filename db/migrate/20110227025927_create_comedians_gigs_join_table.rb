class CreateComediansGigsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :comedians_gigs, :id => false do |t|
      t.integer :comedian_id
      t.integer :gig_id
    end
  end

  def self.down
    drop_table :comedians_gigs
  end
end
