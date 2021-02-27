class HikingDirectory::Hike
  attr_accessor :city, :length, :mileage, :ascent
  
  def initialize(city, length, mileage, ascent)
    @city = city 
    @length = length
    @mileage = mileage
    @ascent = ascent
  end
  
end