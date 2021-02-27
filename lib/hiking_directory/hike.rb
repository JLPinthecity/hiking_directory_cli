class HikingDirectory::Hike
  attr_accessor :name, :city, :link
  
  @@all = []
  
  def initialize(name, city, link)
   @name = name
   @city = city
   @link = link 
    save
  end
  
  def save
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
end