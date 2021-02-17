HikingTrip.destroy_all
Hiker.destroy_all 
Trail.destroy_all 

hiker1 = Hiker.create(name: "Marissa")
hiker2 = Hiker.create(name: "Phong")

trail1 = Trail.create(name: "Red Rocks Trading Post Trail", difficulty: "easy", length: 2, features: "views, wild flowers, wildlife")
trail2 = Trail.create(name: "Saint Mary's Glacier", difficulty: "moderate", length: 2, features: "glacier, lake, wild flowers, views")
trail3 = Trail.create(name: "Royal Arch Trail", difficulty: "advanced", length: 4, features: "views, wild flowers, wildlife")

HikingTrip.create(hiker: hiker1, trail: trail1)
HikingTrip.create(hiker: hiker2, trail: trail2)
HikingTrip.create(hiker: hiker1, trail: trail3)
HikingTrip.create(hiker: hiker2, trail: trail3)