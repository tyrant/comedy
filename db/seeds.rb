# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first

User.all.each { |u| u.destroy }
Comedian.all.each { |c| c.destroy }
Gig.all.each { |g| g.destroy }
Tour.all.each { |t| t.destroy }


@user1 = User.create!(:email => '1@2.com', :password => 'blargh')
@user2 = User.create!(:email => '1@3.com', :password => 'blargh')

@c1 = Comedian.create!(:user => @user1, :name => 'Comedian1')
@c2 = Comedian.create!(:user => @user2, :name => 'Comedian2')

@t1 = Tour.create!(:name => 'Comedian 1 amazing Tour!!!!!111!')
@t2 = Tour.create!(:name => 'Comedian 2 moderately good Tour!11111...')
@t3 = Tour.create!(:name => 'Both together now')

@g1 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 1')
@g2 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 2')
@g3 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 3')
@g4 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 4')
@g5 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 5')
@g6 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 6')
@g7 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 7')
@g8 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 8')
@g9 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 9')
@g10 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 10')

@g11 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 11')
@g12 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 12')
@g13 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 13')
@g14 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 14')
@g15 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 15')
@g16 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 16')
@g17 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 17')
@g18 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 18')
@g19 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 19')
@g20 = Gig.create!(:comedians => [@c2], :tour => @t2, :name => 'Gig 20')

@g21 = Gig.create!(:comedians => [@c1, @c2], :tour => @t3, :name => 'Gig 21')
@g22 = Gig.create!(:comedians => [@c1, @c2], :tour => @t3, :name => 'Gig 22')
@g23 = Gig.create!(:comedians => [@c1, @c2], :tour => @t3, :name => 'Gig 23')
@g24 = Gig.create!(:comedians => [@c1, @c2], :tour => @t3, :name => 'Gig 24')
@g25 = Gig.create!(:comedians => [@c1, @c2], :tour => @t3, :name => 'Gig 25')

@c3 = Comedian.create!(:user => @user1, :name => 'Jimmy Carr')
@t4 = Tour.create!(:name => 'Laughter Therapy')
@g26 = Gig.create!(
  :tour => @t4, 
  :date => '2011-09-16',
  :venue => 'Ipswich Regent Theatre',
  :lat => 52.05695,
  :lng => 1.16189,
  :phone => '01473 433 100',
  :url => 'http://www.ipswichregent.com'
)

@g27 = Gig.create!(
  :tour => @t4,
  :date => '2011-09-17',
  :venue => "King's Lynn Corn Exchange",
  :lat =>
  :lng =>
  :phone => '01553 764 864',
  :url => 'http://kingslynncornexchange.co.uk'
)


@dylanmoran = Comedian.create!(:user => @user1, :name => 'Dylan Moran')
@yeahyeah = Tour.create!(:name => 'yeah, yeah')
Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-09-09',
  :venue => "Canberra Theatre, Canberra",
  :lat => -35.313164,
  :lng => 149.087563,
  :phone => '',
  :url => 'http://www.canberratheatrecentre.com.au/what-is-on/event-details.aspx?eventID=7382'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-09-10',
  :venue => "Palais Theatre, Melbourne",
  :lat => -35.313164,
  :lng => 149.087563,
  :phone => '',
  :url => 'http://www.ticketmaster.com.au/even/120046E1A8FD6728?artistid=952480&majorcatid=10002&minorcatid=51'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-05',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-06',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-07',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-08',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-09',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-27',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-28',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-29',
  :venue => 'Vicar Street, Dublin',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-30',
  :venue => 'Galway Comedy Festival',
  :lat => 52.270102,
  :lng => -9.057755,
  :phone => '+353 87 132 0463',
  :url => 'http://www.galwaycomedyfestival.com'
)

Gig.create!(
  :tour => @yeahyeah,
  :date => '2011-10-25',
  :venue => 'Millennium Forum, Derry',
  :lat => 53.270102,
  :lng => -9.057755,
  :phone => '+44 28 7126 4455',
  :url => 'www.millenniumforum.co.uk/index.php?view=details&id=182%3Adylan-moran-yeah-yeah&option=com_eventlist&Itemid=8'
