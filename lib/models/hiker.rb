class Hiker < ActiveRecord::Base
    has_many :hiking_trips 
    has_many :trails, through: :hiking_trips
end