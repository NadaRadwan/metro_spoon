# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rater.create!(id: 25,
            name:  "Adnane Gasmi",
             email: "ad.gasmi@gmail.com",
             atype: "blog",
             reputation: 4,
             password: "pass",
             password_confirmation: "pass",
             admin: true)

Rater.create!(id: 1 ,
            name:  "Michaels Blog",
             email: "mckl_90@hotmail.com",
             atype: "blog",
             reputation: 1,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 2,
            name:  "Foodnatic",
             email: "Foodnatic@gmail.com",
             atype: "blog",
             reputation: 5,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 3,
            name:  "Lindsay",
             email: "lgasper@gmail.com",
             atype: "online",
             reputation: 4,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 4,
            name:  "Ottawa Citizen",
             email: "AODAliaison@ottawacitizen.com",
             atype: "food critique",
             reputation: 5,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 5,
            name:  "LemonTang",
             email: "jtang99@yahoo.ca",
             atype: "online",
             reputation: 2,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 6,
            name:  "Sophie-ruel",
             email: "sophie555@hotmail.com",
             atype: "online",
             reputation: 1,
             password: "pass",
             password_confirmation: "pass",
             admin: false)


Rater.create!(id: 7,
            name:  "Jstew",
             email: "stewJunior@gmail.com",
             atype: "online",
             reputation: 2,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 8,
            name:  "Cool Food Dude",
             email: "afoody@yahoo.ca",
             atype: "blog",
             reputation: 3,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 9,
            name:  "Spooner",
             email: "oakz@gmail.com",
             atype: "online",
             reputation: 3,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 10,
            name:  "La Presse",
             email: "info@editionslapresse.ca",
             atype: "food critique",
             reputation: 4,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 11,
            name:  "La Gargamelle",
             email: "Gargamelle@gmail.com",
             atype: "blog",
             reputation: 2,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 12,
            name:  "natgervais22",
             email: "natgervais22@gmail.com",
             atype: "online",
             reputation: 5,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 13,
            name:  "AdamR",
             email: "arhaoul018@yahoo.ca",
             atype: "online",
             reputation: 1,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 14,
            name:  "Metro",
             email: "investigations@metronews.ca",
             atype: "food critique",
             reputation: 4,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Rater.create!(id: 15,
            name:  "KatieWilliams1248",
             email: "kwilliams1248@hotmail.com",
             atype: "online",
             reputation: 4,
             password: "pass",
             password_confirmation: "pass",
             admin: false)

Restaurant.create!(id: 1,
                  name: "El Camino",
                  rtype: "mexican",
                  url: "http://eatelcamino.com/wordpress/")

Location.create!(id: 1,
                  fopen: 2011,
                  manager: "manager1",
                  phone: "(613) 422-2800",
                  postal: "K2P1M9",
                  address: "380 Elgin St",
                  mon: "closed",
                  tue: "12:00pm-2:30pm  5:30pm-2:00am",
                  wed: "12:00pm-2:30pm  5:30pm-2:00am",
                  thurs: "12:00pm-2:30pm  5:30pm-2:00am",
                  fri: "12:00pm-2:30pm  5:30pm-2:00am",
                  sat: "5:30pm-2:00am",
                  sun: "5:30pm-2:00am",
                  restaurant_id: 1)

Menuitem.create!(id: 1,
                  name: "Camarones Al Ajillo Con Chile Chipotle",
                  mtype: "food",
                  category: "main",
                  description: "Two skewers (four large prawns) are grilled and served with a spicy chipotle ajillo salsa",
                  price: "8.00",
                  restaurant_id: 1)


Rating.create!(rater_id: 1,
                 price: 3,
                 food: 5,
                 mood: 3,
                 staff: 5,
                 comment: "We definitely enjoyed our meal at El Camino, and we had some of the best tacos we’ve had in town. Since it is a bar, the noise level is really quite high so be prepared for that. We were told there is parking behind the restaurant, but we parked on the side streets because it was the evening. I also almost missed the restaurant because it was on the lower level. It is located right between the hair salon Le Loft, and Elgin Street Diner, just a heads up!",
                 restaurant_id: 1)

Ratingitem.create!(rate: 4,
                 comment: "I love this dish, really well prepared here!",
                 menuitem_id: 1,
                 rater_id: 1)