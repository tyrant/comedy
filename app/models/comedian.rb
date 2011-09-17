class Comedian < ActiveRecord::Base
  has_and_belongs_to_many :gigs, :join_table => :comedians_gigs
  has_many :tours, :through => :gigs
  has_many :videos, :through => :gigs

  validates_presence_of :name
  
end
