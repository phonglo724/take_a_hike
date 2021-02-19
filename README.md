# Take-A-Hike!
Welcome to Take-A-Hike!

## Gerenal Info
This CLI app will help you log a hike, find trails or see what trails other hikers have gone on.
This is our first project in the Flatiron program!

## Intro Video

## Technologies
* Ruby - version 2.6.1
* ActiveRecord - version 6.0
* Sinatra-activerecord - version 2.0
* SQLite3 - version 1.4

## Setup
* Fork and clone this repo into your local branch.
* Run by typing `ruby runner.rb` into  your terminal window and hitting Enter.
* Follow the prompts from there.

## Code Examples
```
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
```
## Features
* Become a hiker in the database.
* See a list of trails.
* Create a hiking trip.
* Find a hiker and see their list of trails hiked.

## Status
Project is functional but has a lot of room to build out more features and data.

## Contact
Feel free to reach out!
[Phong Lo](https://www.linkedin.com/in/phong-lo/) and [Marissa Nolan](https://www.linkedin.com/in/marissanolan1/) 

### Thanks for visiting!


