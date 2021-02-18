require_relative 'config/environment'
$prompt = TTY::Prompt.new

def welcome 
    title = Artii::Base.new(:font => "slant")
    puts title.asciify("Take a Hike!").green
end

def intro_menu
    intro_option = $prompt.select("What would you like to do?", ["Take a hike", "Find a hiker", "Exit"])
    if(intro_option == "Take a hike")
        hiker_name = $prompt.ask("Name:")
        Hiker.create(name: hiker_name)
        puts "Welcome #{hiker_name}!"
    elsif(intro_option == "Find a hiker")
        find_hiker = $prompt.ask("Enter hiker's name:")
        puts Hiker.all.select {|hiker| hiker.name == find_hiker}[0].name
        # puts hiker
    elsif(intro_option == $prompt.ask("Exit"))
        exit!
    end
end

# def create_trip
#     hike = Trail.all.map {|trail| trail.name}
# end

welcome
intro_menu
# create_trip

# binding.pry



