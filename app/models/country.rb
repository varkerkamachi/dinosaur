class Country < ActiveRecord::Base
  attr_accessible :country, :id, :iso
  
  def self.get_countries
    countries = []
    c = Country.all(:select => 'country')
    c.each do |x|
      countries << x[:country]
    end    
  end
end
