
Traveler.destroy_all
Pilot.destroy_all
Flight.destroy_all


lily = Traveler.create(name: "Lily", mood: "Excited")
jack = Traveler.create(name: "Jack", mood: "Excited")
ann = Traveler.create(name: "Ann", mood: "Excited")
sean = Traveler.create(name: "Sean", mood: "Excited")
lin = Traveler.create(name: "Lin", mood: "Excited")

elbin = Pilot.create(name: "Elbin", mood: "Happy", rating: 5, yrs_exp: 7)
sparrow = Pilot.create(name: "Jack Sparrow", mood: "Happy", rating: 2, yrs_exp: 4)
lost = Pilot.create(name: "Lost", mood: "Happy", rating: 1, yrs_exp: 1)
sully = Pilot.create(name: "Sully", mood: "Happy", rating: 5, yrs_exp: 8)
america = Pilot.create(name: "America", mood: "Happy", rating: 4, yrs_exp: 5)

flight_001 = Flight.create(flight_num: "AC132", traveler_id: 5, pilot_id: 2, duration: 83, departure_time: 0705)
flight_002 = Flight.create(flight_num: "SW423", traveler_id: 2, pilot_id: 4, duration: 45, departure_time: 1545)
flight_003 = Flight.create(flight_num: "MU588", traveler_id: 4, pilot_id: 3, duration: 63, departure_time: 1210)
flight_004 = Flight.create(flight_num: "HK759", traveler_id: 1, pilot_id: 5, duration: 91, departure_time: 1933)
flight_005 = Flight.create(flight_num: "CA386", traveler_id: 3, pilot_id: 1, duration: 128, departure_time: 2211)
flight_006 = Flight.create(flight_num: "HD642", traveler_id: 5, pilot_id: 1, duration: 72, departure_time: 0443)
flight_007 = Flight.create(flight_num: "YE592", traveler_id: 2, pilot_id: 2, duration: 55, departure_time: 0315)
flight_008 = Flight.create(flight_num: "KR602", traveler_id: 4, pilot_id: 3, duration: 143, departure_time: 1254)
flight_009 = Flight.create(flight_num: "PO135", traveler_id: 1, pilot_id: 4, duration: 67, departure_time: 0512)
flight_010 = Flight.create(flight_num: "VE423", traveler_id: 3, pilot_id: 5, duration: 156, departure_time: 1616)
