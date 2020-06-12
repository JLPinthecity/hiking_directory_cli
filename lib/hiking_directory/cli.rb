class HikingDirectory::CLI 
  
  def call
    puts "Welcome to the Hiking Project Directory!"
    get_states
    list_states
  end
  
  def get_states
    @states = ["maine", "new york", "new jersey"]
  end
  
  def list_states
    @states.each.with_index(1) do |state, index|
      puts "#{index}. #{state}"
    end
  end
end