class Comedian < ActiveRecord::Base
  has_and_belongs_to_many :gigs
  has_many :videos, :through => :gigs
  has_many :tours, :through => :gigs
end
