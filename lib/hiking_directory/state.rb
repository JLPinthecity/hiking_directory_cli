class HikingDirectory::State
  attr_accessor :hikes, :name, :regions, :url, :number
  
   @@all = []
   
  def initialize(name, url)
    @name = name
    @url = url
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    HikingDirectory::Scraper.scrape_states if @@all.empty?
  end
  
  

end