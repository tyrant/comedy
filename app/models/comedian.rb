class Comedian < ActiveRecord::Base
  has_and_belongs_to_many :gigs, :join_table => :comedians_gigs
  has_many :videos, :through => :gigs
  belongs_to :user

  validates_presence_of :name
  
  # Not all that efficient - rewrite later.
  def tours
    gigs.map { |g| g.tour }.compact.uniq
  end
  
end
