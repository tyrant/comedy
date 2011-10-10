class Comedian < ActiveRecord::Base
  has_and_belongs_to_many :gigs, :join_table => :comedians_gigs
  has_many :videos
  belongs_to :user

  validates_presence_of :name

  def tours
    if self.id
      return Tour.find_by_sql("SELECT * FROM tours WHERE id IN (
        SELECT tour_id FROM gigs WHERE id IN (
          SELECT gig_id FROM comedians_gigs WHERE comedian_id = #{self.id} 
        )
      )")
    else
      return []
    end
  end
  
  
  
end
