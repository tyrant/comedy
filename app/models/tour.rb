class Tour < ActiveRecord::Base
  has_many :gigs

  def to_s
    @name
  end

  # Return a flat array of all comedians working on this tour. Usually just one, but y'never know.
  def get_comedians
    if @gigs
      return @gigs.all.collect {|g| g.comedians.all.collect {|c| c.name} }.flatten
    else
      return nil
    end
  end 
end
