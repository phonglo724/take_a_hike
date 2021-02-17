class CreateHikingTripsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :hiking_trips do |t|
      t.references :hiker 
      t.references :trail 
    end
  end
end
