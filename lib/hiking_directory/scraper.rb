class HikingDirectory::Scraper
  attr_accessor :name, :url 
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.hikingproject.com/directory/areas"))
    states_cards = doc.css("div.row.areas div.card.area-card")
    states_cards.each do |thing|
    name = thing.css("h3.dont-shrink.serif").text
    url = thing.css("a").attr("href").value
    
    binding.pry
  end
  end 
  
end