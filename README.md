# Take-A-Hike!
Welcome to Take-A-Hike!


## Table of Contents
* [General Info](#General-Info)
* [Intro Video](#Intro-Video)
* [Technologies](#Technologies)
* [Setup](#Setup)
* [Code Examples](#Code-Examples)
* [Features](#Features)
* [Status](#Status)
* [Contact](#Contact)

## General Info
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
 def create_a_trip
        puts "Let's plan a trip!"
        # binding.pry
        new_trip = HikingTrip.create(hiker: @new_hiker, trail: @trail)
        
        puts "#{new_trip.hiker.name}, you're going to hike the #{new_trip.trail.name}!"
        puts "Have fun!!"
    end
```
## Features
* Become a hiker in the database.
* See a list of trails.
* Create a hiking trip.
* Find a hiker and see a list of trails they've hiked.

## Status
Project is functional but has a lot of room to build out more features and data.

## Contact
Feel free to reach out!
[Phong Lo](https://www.linkedin.com/in/phong-lo/) and [Marissa Nolan](https://www.linkedin.com/in/marissanolan1/) 

### Thanks for visiting!


