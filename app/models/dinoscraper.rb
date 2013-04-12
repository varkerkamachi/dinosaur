require 'mechanize'
require 'nokogiri'
require 'hpricot'
require 'net/http'
require 'geocoder'

module DinoScraper
  URL = "http://en.wikipedia.org/wiki/"
  #IMGURL = "http://www.bing.com/images?q="
  IMGURL = "http://www.ask.com/pictures?o=14219&l=sem&qsrc=167&q="
  STATES = State.get_states()
  COUNTRIES = Country.get_countries()
  
  def scrape( dino )
    begin
      page = get_page( dino )
    rescue
      puts "ERROR! " + dino + " is probably an invalid dinosaur name."
    end
    
    if !page
      return nil
    end
    
    content = (page.search("//div[@id='mw-content-text']").text rescue nil)  #changes XML node into string  
    result = []
      name            = (page.search("h1//span").text rescue nil)
      description     = (page.search("//div[@id='mw-content-text']").children[1].text + "\r\n" + page.search("//div[@id='mw-content-text']").children[3].text + "\r\n" + page.search("//h2")[1].next_element.next_element.text rescue nil)
      height          = (content.match('\d+\S?ft')[0] rescue nil)
      image           = ''
      speed           = (content.match('\s(\d+)\S?miles\s?per\s?hour')[1] rescue nil)
      terrain         = (content.match('\s.?\bswamp|marsh|flatland|floodplain|mountains|foothills\b.?\b')[0] rescue 'flatland')
      thumb           = ''
      weight          = (content.match('(\d\W.?)\S?short\stons')[1] rescue nil)
      diet            = (content.match('omnivore|fish-eater|carnivore|herbivore')[0] rescue nil)
      era             = (content.match('(\S\w+\b)\s?period')[1] rescue nil)
      location        = (find_location(description) rescue nil)
      geoX            = (Geocoder.coordinates(location)[0] rescue '44.79649')
      geoY            = (Geocoder.coordinates(location)[1] rescue '-97.354983')
      
    #result.push(name, description, image, thumb, terrain, weight, height, speed, '', '', geoX, geoY, era, diet)
    @dino = Dino.new(
      :name => name,
      :description => description,
      :image => '',
      :thumb => '',
      :terrain => terrain,
      :weight => weight,
      :height => height,
      :speed => speed,
      :era => era,
      :diet => diet,
      :location => location,
      :geoX => geoX,
      :geoY => geoY
    );
    @dino.save!
    
  end #end scrape
  
  def find_location (arg)
    matches = []
    STATES.each do |x|
      if (arg.match(x))
        matches << x
      end
    end
    
    COUNTRIES.each do |x|
      if (arg.match(x))
        matches << x
      end
    end
    if matches.empty?
      matches << 'utah'
    end
    return matches.split('').join(', ')
  end
  
  def get_page( dino )
    dino = dino.downcase.capitalize
    m = Mechanize.new
    m.user_agent_alias = 'Mac Safari' #so we don't get blocked by site
    m.get(URL + dino)
  end
  
  extend self
end