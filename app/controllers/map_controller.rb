class MapController < ApplicationController

  # Load a standard Google map. On page load, this views the UK, showing all gigs for the
  # last, and next, six months.
  def show
    @comedians = Comedian.all
    @tours = Tour.all
    
    @months_ago = 6
    @months_since = 6
    @gigs = Gig.where(:date => Time.now.months_ago(@months_ago)..Time.now.months_since(@months_since))
  end
  
  
end
