class HikingDirectory::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.hikingproject.com/directory/areas"))
    binding.pry
  end 
end