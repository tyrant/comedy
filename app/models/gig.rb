class Gig < ActiveRecord::Base
  belongs_to :tour
  has_and_belongs_to_many :comedians
  has_many :videos
end
