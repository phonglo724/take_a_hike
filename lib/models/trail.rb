class Trail < ActiveRecord::Base
    has_many :hiking_trips 
    has_many :hikers, through: :hiking_trips 
end