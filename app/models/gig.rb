class Gig < ActiveRecord::Base
  belongs_to :tour
  has_and_belongs_to_many :comedians, :join_table => :comedians_gigs
  has_many :videos
  belongs_to :venue
  
  def as_json(options)
    gig = {
      'gig' => {
        'date' => self.date,
        'tour_id' => self.tour.id
      }
    }
    unless self.venue.nil?
      gig['gig']['venue'] = {
        'name' => self.venue.name,
        'lat' => self.venue.lat,
        'lng' => self.venue.lng
      }
    end
    
    gig
  end
 
end
