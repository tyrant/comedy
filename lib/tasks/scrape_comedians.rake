require 'nokogiri'
require 'open-uri'

#@g26 = Gig.create!(
#  :tour => @t4, 
#  :date => '2011-09-16',
#  :venue => 'Ipswich Regent Theatre',
#  :lat => 52.05695,
#  :lng => 1.16189,
#  :phone => '01473 433 100',
#  :url => 'http://www.ipswichregent.com'
#)

# Jimmy Carr's site is structured with dates ni 
def jimmy_carr
  doc = Nokogiri::HTML(open('http://www.jimmycarr.com/jt_listings4.html'))# do |config|
    #config.noblanks
  #end
  
  gigs = []
  new_month = ''
  doc.css('div#contentdates table tbody').each do |tr|
    tr.children.each do |node|
      if node.children[0].children[1] and node.children[0].children[1].name == 'h3'
        new_month = node.children[0].children[1].children[0].children[0].content.strip.chomp('...').capitalize
      end

      if node.attributes != {} && node.children[0].attributes == {}
        month = node.children[0].content.strip
        if node.children[1].content.strip != '' # Some table rows have a big set of spaces and a newline, complicating things.
          #puts "NO BREAK --- #{node.children[2].children.inspect}"
          day = node.children[1].content.strip
          url = node.children[2].attributes[1]
          venue = node.children[2].content.strip
          else
        day = node.children[2].content.strip
          #puts "YES BREAK --- #{node.children.inspect}"
          url = node.children[3].attributes[1]
          venue = node.children[3].content.strip
        end
        puts "#{month} #{day} #{new_month} #{url} #{venue}" 
      
      end
    end
    
  end
end

def dylan_moran
  doc = Nokogiri::HTML(open('http://www.dylanmoran.com')) do |c|
    c.noblanks
  end
  
  
end

task :scrape_comedians => :environment do
  #jimmy_carr
  dylan_moran
end
