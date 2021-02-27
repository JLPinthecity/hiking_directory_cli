require 'pry'
class HikingDirectory::Scraper
  
  def self.scrape_states
    doc = Nokogiri::HTML(open("https://www.hikingproject.com/directory/areas"))
    states_cards = doc.css("div.row.areas div.card.area-card")
      states_cards.collect do |thing|
        name = thing.css("h3.dont-shrink.serif").text
        url = thing.css("a").attr("href").value
        HikingDirectory::State.new(name, url)
    end
  end 
  
  def self.scrape_state_for_regions(state)
    doc = Nokogiri::HTML(open("#{state.url}"))
    regions = doc.css("div#subareas div.area")
      regions.each do |region|
        region_name = region.css("div.link").text
        region_url = region.css("a").attr("href").value
        number_of_trails = region.css("div.trails").text
        HikingDirectory::Region.new(region_name, region_url, number_of_trails)
      end
  end
  
  def self.scrape_hikes_in(region)
    doc = Nokogiri::HTML(open("#{region.region_url}"))
    hikes = doc.css("div.mb-3 div.row div.col-md-4.col-sm-6.card-container")
      hikes.each do |hike|
        link = hike.css("a").attr("href").value
        name = hike.css("div.card-body h4.card-title.text-black.text-truncate").text
        city = hike.css("div.text-muted.text-truncate span.city-state").text
        HikingDirectory::Hike(city, length, mileage, ascent)
      end
  end


end