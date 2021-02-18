

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
        intro_option = prompt.select("What would you like to do?", ["Take a hike", "Find a hiker", "Exit"])
        if(intro_option == "Take a hike")
            @hiker_name = prompt.ask("Name:")
            binding.pry
            @new_hiker = Hiker.create(name: @hiker_name)
            puts "Welcome #{@hiker_name}!"
            clear
            find_all_trails
        elsif(intro_option == "Find a hiker")
            @pick_hiker = prompt.select "Here is a list of hikers.", (Hiker.all.map {|hiker| hiker.name})
            # puts Hiker.all.select {|hiker| hiker.name == find_hiker}[0].name
            list_hiking_trips
        elsif(intro_option == prompt.ask("Exit"))
            puts "Thank you. Goodbye!"
        end
    end

    def list_hiking_trips
        puts "Here are #{@pick_hiker}'s list of hiking trips"
        found_trips = HikingTrip.all.filter {|trip| trip.hiker.name == @pick_hiker}
        puts found_trips.map {|each_trip| each_trip.trail.name}
    end

    def find_all_trails
        puts "Hello #{@hiker_name}! Here is a list of trails!"
        trail_choice = prompt.select "Select a trail", (Trail.all.map {|trail| trail.name})
        @trail = Trail.find_by({name: trail_choice})
        clear
        show_trail_info    
    end

    def show_trail_info
        puts "Here is some information about #{@trail.name}"
        puts "Difficulty: "
        puts @trail.difficulty
        puts "Length: "
        puts @trail.length
        puts "Features: "
        puts @trail.features 
        trip_choice = prompt.select("Do you want to plan a trip?", ["Yes", "No"])
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
        puts "Let's plan a trip!"
        # binding.pry
        new_trip = HikingTrip.create(hiker: @new_hiker, trail: @trail)
        
        puts "#{new_trip.hiker.name}, you're going to hike the #{new_trip.trail.name}!"
        puts "Have fun!!"
    end

end

# welcome
# intro_menu

# binding.pry