require 'pry'
class HikingDirectory::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.hikingproject.com/directory/areas"))
    states_cards = doc.css("div.row.areas div.card.area-card")
      states_cards.collect do |thing|
        name = thing.css("h3.dont-shrink.serif").text
        url = thing.css("a").attr("href").value
        state = HikingDirectory::State.new(name, url)
    end
  end 
  
  def self.scrape_state_for_regions(state)
    doc = Nokogiri::HTML(open("#{state.url}"))
    regions = doc.css("div#subareas div.area")
      regions.each do |region|
        region_name = region.css("div.link").text
        region_url = region.css("a").attr("href").value
        number_of_trails = region.css("div.trails").text
      end
  end

    
end