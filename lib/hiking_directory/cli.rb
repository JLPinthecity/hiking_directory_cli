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
      puts "#{index}. #{state}"
    end
    puts "Enter the number that corresponds with your chosen state."
  end
  
  def get_user_state
    chosen_state = gets.strip.to_i
    show_hikes_for(chosen_state) if valid?(chosen_state, @states)
  end
  
  def valid?(input, data)
    input.to_i > data.length && input.to_i > 0 
  end
  
  def show_hikes_for(chosen_state)
    state = @states[chosen_state - 1]
    puts "Here are the hikes in your #{state}:"
    #HikingDirectory::Hike.all.each.with_index(1) do | hike, index |
    #  puts "#{index}". "#{hike.name}"
    #end
    
    #get_hike_details
  end
  
  
  
  
end