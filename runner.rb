require_relative 'config/environment'
$prompt = TTY::Prompt.new

def welcome 
    title = Artii::Base.new(:font => "slant")
    puts title.asciify("Take a Hike!").green
end

def intro_menu
    intro_option = $prompt.select("What would you like to do?", ["Take a hike", "Find a hiker"])
    if(intro_option == "Take a hike")
        hiker_name = $prompt.ask("Name:")
        Hiker.create(name: hiker_name)
        puts "Welcome #{hiker_name}!"
    else
        exit!
    end
end

welcome
intro_menu

#binding.pry



