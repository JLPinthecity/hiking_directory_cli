class HikingDirectory::CLI 
  
  def call
    puts "\nWelcome to the Hiking Project Directory!\n"
    get_states
    list_states
    get_user_state
  end
  
  def get_states
    @states = ["maine", "new york", "new jersey"]
  end
  
  def list_states
    puts "Please pick the state you're interested in."
    @states.each.with_index(1) do |state, index|
      puts "#{index}. #{state}"
    end
    puts "Enter the number that corresponds with your chosen state."
  end
  
  def get_user_state
    chosen_state = gets.strip
    if state_valid?(chosen_state)
      chosen_state.to_i
    end
  end
  
  def state_valid?(input)
    input.between?(1, 51)
  end
  
  
  
  
  
end