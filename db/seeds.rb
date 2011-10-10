User.all.each { |u| u.destroy }
Comedian.all.each { |c| c.destroy }
Gig.all.each { |g| g.destroy }
Tour.all.each { |t| t.destroy }
Venue.all.each { |v| v.destroy }
Video.all.each { |v| v.destroy }


@user1 = User.create!(:email => '1@2.com', :password => 'blargh')
@user2 = User.create!(:email => '1@3.com', :password => 'blargh')

@c1 = Comedian.create!(:user => @user1, :name => 'Comedian1')
@c2 = Comedian.create!(:user => @user2, :name => 'Comedian2')

@t1 = Tour.create!(:name => 'Comedian 1 amazing Tour!!!!!111!')
@t2 = Tour.create!(:name => 'Comedian 2 moderately good Tour!11111...')
@t3 = Tour.create!(:name => 'Both together now')

@vicarstreet = Venue.create!(
  :name => 'Vicar Street',
  :lat => 53.342673,
  :lng => -6.277732,
  :phone => '+353 1 454 5533',
  :url => 'http://www.ticketmaster.ie/search?tm_link=tm_homeA_header_search&q=dylan+moran&search.x=0&search.y=0'
)

@g1 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 1', :venue => @vicarstreet)
@g2 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 2', :venue => @vicarstreet)
@g3 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 3', :venue => @vicarstreet)
@g4 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 4', :venue => @vicarstreet)
@g5 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 5', :venue => @vicarstreet)
@g6 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 6', :venue => @vicarstreet)
@g7 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 7', :venue => @vicarstreet)
@g8 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 8', :venue => @vicarstreet)
@g9 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 9', :venue => @vicarstreet)
@g10 = Gig.create!(:comedians => [@c1], :tour => @t1, :name => 'Gig 10', :venue => @vicarstreet)

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

@jimmycarr = Comedian.create!(:user => @user1, :name => 'Jimmy Carr')

@laughtertherapy = Tour.create!(:name => 'Laughter Therapy')

Video.create!(
  :comedian => @jimmycarr,
  :name => 'Jimmy Carr Live At The Apollo Part 1',
  :url => 'http://www.youtube.com/watch?v=1YxAGx0Dq1E'
)

Video.create!(
  :comedian => @jimmycarr,
  :name => 'Most Offensive Jokes by Jimmy Carr',
  :url => 'http://www.youtube.com/watch?v=SagayzX2T7Y'
)

Video.create!(
  :comedian => @jimmycarr,
  :name => 'jimmy carr owns heckler',
  :url => 'http://www.youtube.com/watch?v=1ioBZ5fNJO8'
)

Video.create!(
  :comedian => @jimmycarr,
  :name => 'JIMMY CARR',
  :url => 'http://www.youtube.com/watch?v=ZJyi1wtvfHQ'
)

Video.create!(
  :comedian => @jimmycarr,
  :name => 'Jimmy Carr Live At The Apollo',
  :url => 'http://www.youtube.com/watch?v=8OJKyZzMS2A'
)

Video.create!(
  :comedian => @jimmycarr,
  :name => 'Jimmy Carr VS Hecklers - ULTIMATE 10 minute Comedy Compilation! Must see - HecklerBlog',
  :url => 'http://www.youtube.com/watch?v=PzLILM7Rgm8'
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy, 
  :date => '2011-09-16',
  :venue => Venue.create!(
    :name => 'Ipswich Regent Theatre',
    :lat => 52.05695,
    :lng => 1.16189,
    :phone => '01473 433 100',
    :url => 'http://www.ipswichregent.com'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-09-17',
  :venue => Venue.create!(
    :name => "King's Lynn Corn Exchange",
    :lat => 0,
    :lng => 0,
    :phone => '01553 764 864',
    :url => 'http://kingslynncornexchange.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-09-23',
  :venue => Venue.create!(
    :name => 'Venue Cymru',
    :lat => 53.3219,
    :lng => -3.81672,
    :phone => '01492 872 000',
    :url => 'http://www.venuecymru.co.uk/home.php?/home'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-09-24',
  :venue => Venue.create!(
    :name => 'Parr Hall',
    :lat => 53.321389,
    :lng => -3.830323,
    :phone => '01925 442 345',
    :url => 'http://www.pyramidparrhall.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-09-25',
  :venue => Venue.create!(
    :name => 'De Montfort Hall',
    :lat => 53.387344,
    :lng => -2.597087,
    :phone => '0116 233 3111',
    :url => 'http://www.demontforthall.co.uk/?cat_id=1&level=1'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-09-29',
  :venue => Venue.create!(
    :name => 'Assembly Hall Theatre',
    :lat => 52.625351,
    :lng => -1.12093,
    :phone => '01892 530 613',
    :url => 'http://www.assemblyhalltheatre.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-09-30',
  :venue => Venue.create!(
    :name => 'Central Theatre',
    :lat => 51.132257,
    :lng => 0.264261,
    :phone => '10634 338 338',
    :url => 'http://www.medway.gov.uk/leisureandculture/thecentralandbrooktheatres.aspx'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-01',
  :venue => Venue.create!(
    :name => 'Guildhall',
    :lat => 51.381692,
    :lng => 0.524769,
    :phone => '02392 824 355',
    :url => 'http://www.portsmouthguildhall.co.uk/index.php'
  )
)
  
Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-02',
  :venue => Venue.create!(
    :name => 'Town Hall',
    :lat => 51.381692,
    :lng => 0.524769,
    :phone => '0844 576 2210',
    :url => 'http://www.cheltenhamtownhall.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-02',
  :venue => Venue.create!(
    :name => 'Lighthouse',
    :lat => 50.797424,
    :lng => -1.092074,
    :phone => '0844 406 8666',
    :url => 'http://www.lighthousepoole.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-08',
  :venue => Venue.create!(
    :name => 'Wellsprings Leisure Centre',
    :lat => 50.717575,
    :lng => -1.973462,
    :phone => '01823 271 271',
    :url => 'http://www.toneleisure.co.uk/book/'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-09',
  :venue => Venue.create!(
    :name => 'Warwick Arts Centre',
    :lat => 52.379044,
    :lng => -1.5617,
    :phone => '024 7652 4524',
    :url => 'http://www.warwickartscentre.co.uk'
  )
)

@edencourt = Venue.create!(
  :name => 'Eden Court Theatre',
  :lat => 52.379044,
  :lng => -1.5617,
  :phone => '01463 234 234',
  :url => 'http://www.eden-court.co.uk'
)
Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-12',
  :venue => @edencourt
)
Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-13',
  :venue => @edencourt
)

@secc = Venue.create!(
  :name => 'SECC',
  :lat => 57.47284,
  :lng => -4.230402,
  :phone => '0844 395 4000',
  :url => 'http://www.secc.co.uk'
)
Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-14',
  :venue => @secc
)
Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-01-15',
  :venue => @secc
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-16',
  :venue => Venue.create!(
    :name => 'Playhouse',
    :lat => 55.860865,
    :lng => -4.288131,
    :phone => '0844 847 1660',
    :url => 'http://www.edinburghplayhouse.co.uk/index.asp?VenueID=93'
  )
)
    
Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-21',
  :venue => Venue.create!(
    :name => 'Aberystwyth Arts Centre',
    :lat => 52.415548,
    :lng => -4.062769,
    :phone => '01970 623 232',
    :url => 'http://www.aberystwythartscentre.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-22',
  :venue => Venue.create!(
    :name => "St. David's Hall",
    :lat => 52.415548,
    :lng => -4.062769,
    :phone => '029 2087 8444',
    :url => 'http://www.stdavidshallcardiff.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-23',
  :venue => Venue.create!(
    :name => 'Mayflower',
    :lat => 50.908797,
    :lng => -1.408975,
    :phone => '02380 711 811',
    :url => 'http://www.mayflower.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-25',
  :venue => Venue.create!(
    :name => 'New Victoria Theatre',
    :lat => 51.320575,
    :lng => -0.56163,
    :phone => '0844 871 7645',
    :url => 'http://www.atgtickets.com/New-Victoria-Theatre'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-28',
  :venue => Venue.create!(
    :name => 'Regent Theatre',
    :lat => 51.320575,
    :lng => -0.560163,
    :phone => '01473 433 100',
    :url => 'httpsapps.ipswich.gov.uk/PEO/'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-29',
  :venue => Venue.create!(
    :name => 'Meres Leisure Centre',
    :lat => 52.907092,
    :lng => -0.664855,
    :phone => '01476 406158',
    :url => 'http://www.guildhallartscentre.com/shows/3006/'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-10-30',
  :venue => Venue.create!(
    :name => 'Colston Hall',
    :lat => 52.907092,
    :lng => -0.664855,
    :phone => '0117 922 3686',
    :url => 'http://www.colstonhall.org'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-11-04',
  :venue => Venue.create!(
    :name => 'Waterfront',
    :lat => 51.454669,
    :lng => -2.597738,
    :phone => '028 9033 4455',
    :url => 'http://www.waterfront.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-11-05',
  :venue => Venue.create!(
    :name => 'Millennium Forum',
    :lat => 54.597677,
    :lng => -5.920215,
    :phone => '028 7126 4455',
    :url => 'http://www.millenniumforum.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-11-06',
  :venue => Venue.create!(
    :name => 'Empire',
    :lat => 54.906296,
    :lng => -1.389111,
    :phone => '0844 871 3022',
    :url => 'http://www.sunderlandempire.org.uk/index.asp?VenueID=111'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-11-08',
  :venue => Venue.create!(
    :name => 'G Live',
    :lat => 54.906296,
    :lng => -1.389111,
    :phone => '0844 7701 797',
    :url => 'http://www.glive.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-11-09',
  :venue => Venue.create!(
    :name => 'The Cresset',
    :lat => 51.238404,
    :lng => -0.566149,
    :phone => '01733 265 705',
    :url => 'http://www.cresset.co.uk'
  )
)

Gig.create!(
  :comedians => [@jimmycarr],
  :tour => @laughtertherapy,
  :date => '2011-11-11',
  :venue => Venue.create!(
    :name => 'Leas Cliff Hall',
    :lat => 52.589156,
    :lng => -0.283782,
    :phone => '0844 847 1776',
    :url => 'http://www.leascliffhall.org.uk/index.asp?VenueID=98'
  )
)


    
    
@dylanmoran = Comedian.create!(:user => @user1, :name => 'Dylan Moran')

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Germany',
  :url => 'http://www.youtube.com/watch?v=IoLIU2NI66w'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 1',
  :url => 'http://www.youtube.com/watch?v=eY0A-15JQ8k'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 2',
  :url => 'http://www.youtube.com/watch?v=gmpnuVAOmKo'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 3',
  :url => 'http://www.youtube.com/watch?v=KuKKMBch--s'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 4',
  :url => 'http://www.youtube.com/watch?v=TxDFEjFC9so'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 5',
  :url => 'http://www.youtube.com/watch?v=1R42AvPi_iY'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 6',
  :url => 'http://www.youtube.com/watch?v=Ob8Eoknrjd4'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 7',
  :url => 'http://www.youtube.com/watch?v=4_yEoTwfyRo'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - What It Is - Live Part 8',
  :url => 'http://www.youtube.com/watch?v=EkCxHoeaHgo'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran, Australia, The "English" voice',
  :url => 'http://www.youtube.com/watch?v=x_43-4xjnVA'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Arnold Schwarzenegger (Like Totally)',
  :url => 'http://www.youtube.com/watch?v=wlLpCh-IE54',
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - Potential (Monster)',
  :url => 'http://www.youtube.com/watch?v=yNKoH84ioz0'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - Women have no feelings',
  :url => 'http://www.youtube.com/watch?v=kUH34iqK7cI'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran',
  :url => 'http://www.youtube.com/watch?v=Lo2JRS2KoPM'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - French',
  :url => 'http://www.youtube.com/watch?v=AZWZZRZDcSQ'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - Americans',
  :url => 'http://www.youtube.com/watch?v=M6K8yfQYOTQ'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on kids parties',
  :url => 'http://www.youtube.com/watch?v=eAMtKpOTuM4'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran Stand Up',
  :url => 'http://www.youtube.com/watch?v=0CQWA-fjqUM'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'dylan moran - rejection',
  :url => 'http://www.youtube.com/watch?v=oS1NOXWVWgo'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Americans',
  :url => 'http://www.youtube.com/watch?v=N0rUtSLZTIc'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Aim Low: The Best of Dylan Moran',
  :url => 'http://www.youtube.com/watch?v=tFswr6QI-py'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Music',
  :url => 'http://www.youtube.com/watch?v=9dkeAcbXStc'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Chat Show Interview Part One Of Two',
  :url => 'http://www.youtube.com/watch?v=PUIGLvPHMeA'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Chat Show Interview Part Two Of Two',
  :url => 'http://www.youtube.com/watch?v=N7YuzTzxqrU'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran on Music',
  :url => 'http://www.youtube.com/watch?v=0dkeAcbXStc'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran Gardening Gardening Death - What it is Live 2009.mov',
  :url => 'http://www.youtube.com/watch?v=QIPpxIpE_uo'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - Gardening, Gardening, Gardening, Death!!!',
  :url => 'http://www.youtube.com/watch?v=aunrJ5CXVMw'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - "And then the cage comes down!"',
  :url => 'http://www.youtube.com/watch?v=wbObXYMHVHE'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran - Hangovers (Monster)',
  :url => 'http://www.youtube.com/watch?v=87Rh-eq6YOM'
)

Video.create!(
  :comedian => @dylanmoran,
  :name => 'Dylan Moran Stand Up',
  :url => 'http://www.youtube.com/watch?v=0CQWA-fjqUM'
)

@yeahyeah = Tour.create!(:name => 'yeah, yeah')
@canberra = Venue.create!(
  :name => "Canberra Theatre",
  :lat => -35.313164,
  :lng => 149.087563,
  :phone => '',
  :url => 'http://www.canberratheatrecentre.com.au/what-is-on/event-details.aspx?eventID=7382'
)
Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-09-09',
  :venue => @canberra
)

@palaistheatre = Venue.create!(
  :name => "Palais Theatre, Melbourne",
  :lat => -35.313164,
  :lng => 149.087563,
  :phone => '',
  :url => 'http://www.ticketmaster.com.au/even/120046E1A8FD6728?artistid=952480&majorcatid=10002&minorcatid=51'
)
Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-09-10',
  :venue => @palaistheatre
)


Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-05',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-06',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-07',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-08',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-09',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-27',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-28',
  :venue => @vicarstreet
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-29',
  :venue => @vicarstreet
)

@galwayfestival = Venue.create!(
  :name => 'Galway Comedy Festival',
  :lat => 52.270102,
  :lng => -9.057755,
  :phone => '+353 87 132 0463',
  :url => 'http://www.galwaycomedyfestival.com'
)
Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-30',
  :venue => @galwayfestival
)

@derryforum = Venue.create!(
  :name => 'Millennium Forum',
  :lat => 53.270102,
  :lng => -9.057755,
  :phone => '+44 28 7126 4455',
  :url => 'www.millenniumforum.co.uk/index.php?view=details&id=182%3Adylan-moran-yeah-yeah&option=com_eventlist&Itemid=8'
)
Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-25',
  :venue => @derryforum
)

Gig.create!(
  :comedians => [@dylanmoran],
  :tour => @yeahyeah,
  :date => '2011-10-26',
  :venue => @derryforum
)

