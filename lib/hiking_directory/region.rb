class HikingDirectory::Region
  attr_accessor :region_name, :region_url, :number_of_trails
  
  @@all = []
  
  def initialize(region_name, region_url, number_of_trails)
    @region_name = region_name
    @region_url = region_url
    @number_of_trails = number_of_trails
    save
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all
  end

end 
  
  
