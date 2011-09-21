class Gig < ActiveRecord::Base
  belongs_to :tour
  has_and_belongs_to_many :comedians, :join_table => :comedians_gigs
  has_many :videos
  belongs_to :venue
 
end
