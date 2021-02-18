class Trail < ActiveRecord::Base
    has_many :hiking_trips 
    has_many :hikers, through: :hiking_trips 

    def self.all_trail_names
        all.pluck(:name).sort
    end

    # def self.get_hiker
    #     hiker_list = HikingTrip.all.select {|hiker| Hiker.name == }

    # end
end