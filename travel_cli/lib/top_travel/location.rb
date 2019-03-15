require 'pry'

class Travel::Location 

  attr_accessor :name, :url

  @@all = []

  def initialize
    @name = name 
    
    @url = url
    
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 

end 