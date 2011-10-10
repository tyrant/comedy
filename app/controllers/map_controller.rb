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
  def update_markers
    params[:comedian_id] = params[:comedian_id].to_i if params[:comedian_id]
    params[:tour_id] = params[:tour_id].to_i if params[:tour_id]
  
    @c = Comedian.includes(:gigs).find(params[:comedian_id]).gigs if params[:comedian_id] != 0
    @t = Tour.includes(:gigs).find(params[:tour_id]).gigs if params[:tour_id] != 0
   
    if params[:comedian_id] == 0 && params[:tour_id] == 0
      @gigs = Gig.includes(:comedians, :tour, :venue).where(1)
    elsif params[:comedian_id] != 0 && params[:tour_id] == 0
      @gigs = @c
    elsif params[:comedian_id] == 0 && params[:tour_id] != 0
      @gigs = @t
    elsif params[:comedian_id] != 0 && params[:tour_id] != 0
      @gigs = @c & @t
    end
    
    @gigs_info = []
    @gigs.each do |gig|
      @gig_info = {
        :date => gig.date,
        :comedians => gig.comedians.map {|c| {:id => c.id, :name => c.name} }
      }
      unless gig.venue.nil?
        @gig_info[:venue] = {
          :name => gig.venue.name,
          :url => gig.venue.url,
          :lat => gig.venue.lat,
          :lng => gig.venue.lng
        }
      end
      unless gig.tour.nil?
        @gig_info[:tour] = {
          :name => gig.tour.name
        }
      end
      @gigs_info.push @gig_info
    end
    
    render :json => @gigs_info
  end
  
  
end
