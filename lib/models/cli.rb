

class Cli

    def prompt
        TTY::Prompt.new
    end

    def clear 
        system("clear")
    end
    

    def welcome 
        title = Artii::Base.new(:font => "slant")
        puts title.asciify("Take a Hike!").green
        intro_menu
    end

    


    def intro_menu
        intro_option = prompt.select("What would you like to do?".colorize(:light_yellow), ["Take a hike", "Find a hiker", "Exit"])
        if(intro_option == "Take a hike")
            @hiker_name = prompt.ask("Name:")
            @new_hiker = Hiker.create(name: @hiker_name)
            puts "Welcome #{@hiker_name}!"
            clear
            find_all_trails
        elsif(intro_option == "Find a hiker")
            @pick_hiker = prompt.select "Here is a list of hikers.".colorize(:light_magenta), (Hiker.all.map {|hiker| hiker.name})
            sleep(2)
            list_hiking_trips
        elsif(intro_option == "Exit")
            puts "Thank you. Goodbye!"
        end
    end

    def list_hiking_trips
        puts "Here are #{@pick_hiker}'s list of hiking trips".colorize(:white)
        found_trips = HikingTrip.all.filter {|trip| trip.hiker.name == @pick_hiker}
        puts found_trips.map {|each_trip| each_trip.trail.name.colorize(:white)}
    end

    def find_all_trails
        puts "Hello #{@hiker_name}! Here is a list of trails!".colorize(:white)
        trail_choice = prompt.select "Select a trail", (Trail.all.map {|trail| trail.name})
        @trail = Trail.find_by({name: trail_choice})
        clear
        show_trail_info    
    end

    def show_trail_info
        puts "Here is some information about #{@trail.name}".colorize(:light_magenta)
        puts "Difficulty: ".colorize(:white)
        puts @trail.difficulty
        puts "Length: ".colorize(:white)
        puts @trail.length
        puts "Features: ".colorize(:white)
        puts @trail.features
        trip_choice = prompt.select("Do you want to plan a trip?".colorize(:light_yellow), ["Yes", "No"])
        case trip_choice
            when "Yes"
                clear
                create_a_trip
            when "No"
                clear
                intro_menu
            else
                puts "Invalid option."
        end
    end

    def create_a_trip
        puts "Let's plan a trip!".colorize(:white)
        # binding.pry
        new_trip = HikingTrip.create(hiker: @new_hiker, trail: @trail)
        
        puts "#{new_trip.hiker.name}, you're going to hike the #{new_trip.trail.name}!".colorize(:red)
        closing = Artii::Base.new(:font => "slant")
        puts closing.asciify("Have fun!!").red
    end

end



# binding.pry