class MapController < ApplicationController

  # Load a standard Google map. On page load, this views the UK, showing all gigs for the
  # last, and next, six months.
  def show
    @comedians = Comedian.all
    @tours = Tour.all
    
    @months_ago = 6
    @months_since = 6
  end
  
  
  # Given a comedian ID, a tour ID, and a date range, return all gigs matching these constraints. Ajaxly. In JSON form.
  
  # Meta-comment: ugh, so clunky. Surely there's an ActiveRecord-ish way of doing this more nicely? Or is the anti-ORM
  # buzz right, and you're better off using raw SQL on general principles?
  def update_markers
    @gigs = Gig.all
    @gigs = Comedian.find(params[:comedian_id].to_i).gigs if params[:comedian_id].to_i != 0
    if params[:tour_id].to_i != 0
      @tour = Tour.find(params[:tour_id].to_i)
      @gigs = @gigs.find_all {|g| g.tour == @tour } 
    end
    render :json => @gigs
  end
  
  
end
