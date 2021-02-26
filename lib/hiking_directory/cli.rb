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
  
  def list_states
    puts "Please pick the state you're interested in."
    @states.each.with_index(1) do |state, index|
      puts "#{index}. #{state.name}"
    end
    puts "Enter the number that corresponds with your chosen state."
  end
  
  def get_user_state
    chosen_state = gets.strip.to_i
      if valid_input(chosen_state, @states)
        show_hikes_for(chosen_state) 
      else 
        puts "Invalid option, please choose state from list."
        list_states
  end
  
  def valid_input(input, data)
    input = input.to_i
    input <= data.length && input > 0 
  end
  
  def show_hikes_for(chosen_state)
    state = @states[chosen_state - 1]
    puts "Pick a region in #{state.name}:"
    #HikingDirectory::Hike.all.each.with_index(1) do | hike, index |
    #  puts "#{index}". "#{hike.name}"
    #end
    
    #get_hike_details
    
  end
  
  
  
  
end
