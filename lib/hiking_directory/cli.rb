require 'pry'
class HikingDirectory::CLI 
  
  def call
    puts "\nWelcome to the Hiking Trails Directory!\n"
    get_states
    list_states
    get_user_state
  end
  
  def get_states
    @states = HikingDirectory::State.all
  end
  
  def regions
    @regions = HikingDirectory::Region.all
  end
  
  def list_states
    puts "Please pick the state you're interested in."
      @states.each.with_index(1) do |state, index|
        puts "#{index}. #{state.name}"
      end
    puts "Enter the number that corresponds with your chosen state."
    get_user_state
    regions.clear #delete regions collection w/states list
  end
  
  def get_user_state
    chosen_state = gets.strip.to_i
      if valid_input(chosen_state, @states)
        show_regions_in(chosen_state) 
      else 
        puts "Invalid option, please choose state from list."
        list_states
      end
  end
  
  def valid_input(input, data)
    input = input.to_i
    input <= data.length && input > 0 
  end
  
  def show_regions_in(chosen_state)
    state = @states[chosen_state - 1]
    HikingDirectory::Scraper.scrape_state_for_regions(state)
      puts "Please pick the region to see trails in your area."
      regions.each.with_index(1) do |region, index|
        puts "#{index}. #{region.region_name} - #{region.number_of_trails}"
      end
  end
  
  def get_user_region
    chosen_region = gets.strip.to_i
      if valid_input(chosen_region, @regions)
        show_hikes_in(chosen_region) 
      else 
        puts "Invalid option, please choose state from list."
        show_regions_in(chosen_state)
      end
  end
  
  def show_hikes_in(chosen_region)
    region = @regions[chosen_region - 1]
    HikingDirectory::Scraper.scrape_hikes_in(region)
      puts "Please pick the trail you'd like to learn more about."
        hikes.each.with_index(1) do |hike, index|
          puts "#{index}. #{} - #{}"
      end
  end
  end
  
  
  
  
  
  
    
     
    
      
   
    

  
  
  
  
end
