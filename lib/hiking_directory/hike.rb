class HikingDirectory::Hike
  attr_accessor :city, :length, :mileage, :ascent
  
  @@all = []
  
  def initialize(city, length, mileage, ascent)
    @city = city 
    @length = length
    @mileage = mileage
    @ascent = ascent
    save
  end
  
  def save
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
end