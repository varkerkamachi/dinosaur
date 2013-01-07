class Dino < ActiveRecord::Base
  attr_accessible :description, :height, :id, :image, :name, :speed, :terrain, :thumb, :weight, :diet, :era, :geoX, :geoY

  scope :limit, lambda { |n| { :limit => n } }
  
  validates_presence_of :name, :description
  
  def self.find_fastest
    return self.find(:all, :order => "speed desc")
  end
  
  def self.find_slowest
    return self.find(:all, :order => "speed asc")
  end
  
  def self.find_heaviest
    return self.find(:all, :order => "weight desc")
  end
  
  def self.find_lightest
    return self.find(:all, :order => "weight asc")
  end
  
  def self.find_tallest
    return self.find(:all, :order => "height desc")
  end
  
  def self.find_shortest
    return self.find(:all, :order => "height asc")
  end
    
end
