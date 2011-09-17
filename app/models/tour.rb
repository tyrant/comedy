# Tour: a sequence of gigs.
class Tour < ActiveRecord::Base
  has_many :gigs
  has_many :comedians, :through => :gigs

  attr_accessible :name

  

  def to_s
    @name
  end

  # Return a flat array of all comedians working on this tour. Usually just one, but y'never know.
  def get_comedians
    @gigs.all.collect {|g| g.comedians.all.collect {|c| c.name}}.flatten unless @gigs.empty?
  end 
end
