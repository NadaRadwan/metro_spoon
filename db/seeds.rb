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
            name:  "Michael s Blog",
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

Restaurant.create!(id: 2,
                  name: "Cacao70",
                  rtype: "breakfast",
                  url: "http://cacao70.ca/")

Restaurant.create!(id: 3,
                  name: "North and Navy",
                  rtype: "italian",
                  url: "http://northandnavy.com/")

Restaurant.create!(id: 4,
                  name: "The Buzz Restaurant and Lounge",
                  rtype: "american",
                  url: "http://thebuzzrestaurant.ca/")


Restaurant.create!(id: 5,
                  name: "Atomic Rooster",
                  rtype: "pub",
                  url: "http://www.atomicrooster.ca/")


Restaurant.create!(id: 6,
                  name: "Town",
                  rtype: "italian",
                  url: "http://townlovesyou.ca/")


Restaurant.create!(id: 7,
                  name: "Union Local 613",
                  rtype: "southern",
                  url: "http://union613.ca/")

Restaurant.create!(id: 8,
                  name: "Oz Kafe",
                  rtype: "italian",
                  url: "http://www.ozkafe.com/")

Restaurant.create!(id: 9,
                  name: "Colonnade Pizza",
                  rtype: "italian",
                  url: "http://www.colonnadepizza.com/new/")

Restaurant.create!(id: 10,
                  name: "The Smoque Shack",
                  rtype: "southern",
                  url: "http://smoqueshack.com/")

Restaurant.create!(id: 11,
                  name: "Jadeland Restaurant",
                  rtype: "chinese",
                  url: "http://www.jadeland.com/")


Restaurant.create!(id: 12,
                  name: "Allium",
                  rtype: "french",
                  url: "http://www.alliumrestaurant.com")

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

Location.create!(id: 2,
                  fopen: 2014,
                  manager: "manager2",
                  phone: "(613) 860-1991",
                  postal: "K1N6Z9",
                  address: "53 William St",
                  mon: "10:00am-11:00pm",
                  tue: "10:00am-11:00pm",
                  wed: "10:00am-11:00pm",
                  thurs: "10:00am-11:00pm",
                  fri: "10:00am-12:00am",
                  sat: "10:00am-12:00am",
                  sun: "10:00am-11:00pm",
                  restaurant_id: 2)

Location.create!(id: 3,
                  fopen: 2015,
                  manager: "manager3",
                  phone: "(613) 232-6289 ",
                  postal: "K2P0B8",
                  address: "226 Nepean St",
                  mon: "11:00am-2:00pm 5:00pm-10:00pm",
                  tue: "11:00am-2:00pm 5:00pm-10:00pm",
                  wed: "11:00am-2:00pm 5:00pm-10:00pm",
                  thurs: "11:00am-2:00pm 5:00pm-10:00pm",
                  fri: "11:00am-2:00pm 5:00pm-10:00pm",
                  sat: "5:00pm-10:00pm",
                  sun: "closed",
                  restaurant_id: 3)

Location.create!(id: 4,
                  fopen: 2012,
                  manager: "manager4",
                  phone: "(613) 565-9595",
                  postal: "K2P1Y4",
                  address: "374 Bank St",
                  mon: "4:00pm-10:00pm",
                  tue: "4:00pm-10:00pm",
                  wed: "4:00pm-12:00am",
                  thurs: "4:00pm-11:00pm",
                  fri: "4:00pm-12:00am",
                  sat: "4:00pm-12:00am",
                  sun: "10:00am-9:00pm",
                  restaurant_id: 4)

Location.create!(id: 5,
                  fopen: 2011,
                  manager: "manager 5",
                  phone: "(613) 569-1000 ",
                  postal: "K2P1X7",
                  address: "303 Bank St",
                  mon: "11:00am-2:00am",
                  tue: "11:00am-2:00am",
                  wed: "11:00am-2:00am",
                  thurs: "11:00am-2:00am",
                  fri: "11:00am-2:00am",
                  sat: "9:00am-2:00am",
                  sun: "9:00am-2:00am",
                  restaurant_id: 5)

Location.create!(id: 6,
                  fopen: 2010,
                  manager: "manager 6",
                  phone: "(613) 695-8696",
                  postal: "K2P1M3 ",
                  address: "296 Elgin St",
                  mon: "5:00pm-10:00pm",
                  tue: "5:00pm-10:00pm",
                  wed: "11:30am-2:00pm 5:00pm-10:00pm",
                  thurs: "11:30am-2:00pm 5:00pm-10:00pm",
                  fri: "11:30am-2:00pm 5:00pm-10:00pm",
                  sat: "5:00pm-11:00pm",
                  sun: "5:00pm-10:00pm",
                  restaurant_id: 6)

Location.create!(id: 7,
                  fopen: 2000,
                  manager: "manager 7",
                  phone: "(613) 231-1010",
                  postal: "K2P0J8",
                  address: "315 Somerset St West",
                  mon: "5:30pm-10:00pm",
                  tue: "5:30pm-10:00pm",
                  wed: "5:30pm-2:00am",
                  thurs: "5:30pm-2:00am",
                  fri: "5:30pm-2:00am",
                  sat: "10:00am-2:00pm 5:30pm-2:00am",
                  sun: "10:00am-5:00pm",
                  restaurant_id: 7)

Location.create!(id: 8,
                  fopen: 2011,
                  manager: "manager 8",
                  phone: "(613) 234-0907 ",
                  postal: "K2P1M9",
                  address: "361 Elgin St ",
                  mon: "closed",
                  tue: "5:00pm-2:00am",
                  wed: "5:00pm-2:00am",
                  thurs: "5:00pm-2:00am",
                  fri: "5:00pm-2:00am",
                  sat: "5:00pm-2:00am",
                  sun: "5:00pm-2:00am",
                  restaurant_id: 8)

Location.create!(id: 9,
                  fopen: 1967,
                  manager: "manager 9",
                  phone: "(613) 237-3179",
                  postal: "K2P2K2",
                  address: "280 Metcalfe St ",
                  mon: "11:00am-9:30pm",
                  tue: "11:00am-9:30pm",
                  wed: "11:00am-9:30pm",
                  thurs: "11:00am-9:30pm",
                  fri: "11:00am-10:00pm",
                  sat: "11:00am-10:00pm",
                  sun: "11:00am-9:00pm",
                  restaurant_id: 9)


Location.create!(id: 10,
                  fopen: 2009,
                  manager: "manager 10",
                  phone: "(613) 789-4245 ",
                  postal: "K1N7J3",
                  address: "129 York St ",
                  mon: "11:30am-11:00pm",
                  tue: "11:30am-11:00pm",
                  wed: "11:30am-11:00pm",
                  thurs: "11:30am-11:00pm",
                  fri: "11:30am-12:00am",
                  sat: "11:30am-12:00am",
                  sun: "11:30am-11:00pm",
                  restaurant_id: 10)

Location.create!(id: 11,
                  fopen: 2008,
                  manager: "manager 11",
                  phone: "(613) 233-0204 ",
                  postal: "K1R6C6",
                  address: "625 Somerset St West",
                  mon: "11:00am-11:30pm",
                  tue: "11:00am-11:30pm",
                  wed: "11:00am-11:30pm",
                  thurs: "11:00am-11:30pm",
                  fri: "11:00am-12:30am",
                  sat: "11:00am-12:30am",
                  sun: "11:00am-11:30pm",
                  restaurant_id: 11)


Location.create!(id: 12,
                  fopen: 2004,
                  manager: "manager 12",
                  phone: "(613) 792-1313 ",
                  postal: "K1R6C6",
                  address: "87 Holland Avenue",
                  mon: "5:30pm-9:30pm",
                  tue: "11:30am-2:00pm 5:30pm-9:00pm",
                  wed: "11:30am-2:00pm 5:30pm-9:00pm",
                  thurs: "11:30am-2:00pm 5:30pm-9:00pm",
                  fri: "11:30am-2:00pm 5:30pm-10:00pm",
                  sat: "5:30pm-10:00pm",
                  sun: "closed",
                  restaurant_id: 12)


Menuitem.create!(id: 1,
                  name: "Camarones Al Ajillo Con Chile Chipotle",
                  mtype: "food",
                  category: "main",
                  description: "Two skewers (four large prawns) are grilled and served with a spicy chipotle ajillo salsa",
                  price: "8.00",
                  restaurant_id: 1)


Menuitem.create!(id: 2,
                  name: "Mejillones Al Estilo El Camino",
                  mtype: "food",
                  category: "main",
                  description: "Pan roasted Penn Cove mussels in a tomato, garlic, and ancho chile cream sauce. Served with grilled bread",
                  price: "12.00",
                  restaurant_id: 1)

Menuitem.create!(id: 3,
                  name: "Pastel De Zanahoria",
                  mtype: "food",
                  category: "dessert",
                  description: "Dense and moist carrot cake, made with pineapple, coconut, walnuts, and covered in a lemon cream cheese frosting",
                  price: "12.00",
                  restaurant_id: 1)

Menuitem.create!(id: 4,
                  name: "Mexican Coffee",
                  mtype: "drink",
                  category: "dessert",
                  description: "El Jimador Anêjo, Kahlua, Lighthouse Coffee, and topped with whipped cream",
                  price: "8.00",
                  restaurant_id: 1)

Menuitem.create!(id: 5,
                  name: "Cacao70 Triple Chocolate Cake",
                  mtype: "food",
                  category: "main",
                  description: "Cacao70 chocolate cake, chocolate whipped cream, chocolate sauce, and melted chocolate pile up our triple chocolate cake",
                  price: "10.25",
                  restaurant_id: 2)


Menuitem.create!(id: 6,
                  name: "Cacao70 Triple Chocolate Cake",
                  mtype: "food",
                  category: "main",
                  description: "Classic waffle topped with caramelized bananas drizzled with melted chocolate served with chocolate coated cereal, chocolate covered vanilla ice cream and melted chocolate.",
                  price: "14.75",
                  restaurant_id: 2)


Menuitem.create!(id: 7,
                  name: "Berry Smoothie",
                  mtype: "drink",
                  category: "dessert",
                  description: "Strawberries and rasberried blended with orange juice",
                  price: "6.25",
                  restaurant_id: 2)


Menuitem.create!(id: 8,
                  name: "Cappuccino Frappe",
                  mtype: "drink",
                  category: "starter",
                  description: "Espresso blended with vanilla icecream and ice",
                  price: "4.95",
                  restaurant_id: 2)


Menuitem.create!(id: 9,
                  name: "Citrus Salad",
                  mtype: "food",
                  category: "main",
                  price: "10.00",
                  restaurant_id: 3)

Menuitem.create!(id: 10,
                  name: "Tiramisu",
                  mtype: "food",
                  category: "dessert",
                  price: "8.00",
                  restaurant_id: 3)


Menuitem.create!(id: 11,
                  name: "Bigoli in salsa",
                  mtype: "food",
                  category: "main",
                  price: "8.00",
                  restaurant_id: 3)


Menuitem.create!(id: 12,
                  name: "Corzetti with Walnuts and Pancetta",
                  mtype: "food",
                  category: "main",
                  price: "9.00",
                  restaurant_id: 3)


Menuitem.create!(id: 13,
                  name: "Coconut Shrimp",
                  mtype: "food",
                  category: "starter",
                  description: "a Buzz favourite, served with a spiced apricot dip",
                  price: "12.00",
                  restaurant_id: 4)


Menuitem.create!(id: 14,
                  name: "Baltimore Crab Cakes",
                  mtype: "food",
                  category: "starter",
                  description: "jumbo lump Atlantic blue crab meat, seasoned, hand formed and fried golden with green olive remoulade",
                  price: "14.00",
                  restaurant_id: 4)


Menuitem.create!(id: 15,
                  name: "Baltimore Crab Cakes",
                  mtype: "food",
                  category: "main",
                  description: "slowly braised in an ancho chile, maple & coffee jus with oyster mushrooms and seasonal vegetables, served over tender gnocchi",
                  price: "24.00",
                  restaurant_id: 4)



Menuitem.create!(id: 16,
                  name: "Pecan Veggie Burger",
                  mtype: "food",
                  category: "main",
                  description: "our special blend of crushed pecans, almonds & vegetables cooked until golden brown & topped with Pine River cheddar and tomatillo salsa",
                  price: "17.00",
                  restaurant_id: 4)


Menuitem.create!(id: 17,
                  name: "Atomic Club",
                  mtype: "food",
                  category: "main",
                  description: "Lettuce, tomatoes, bacon, rotisserie chicken, guacamole and sprouts on rosemary foccacia",
                  price: "14.00",
                  restaurant_id: 5)


Menuitem.create!(id: 18,
                  name: "Grilled Portobello Wrap",
                  mtype: "food",
                  category: "main",
                  description: "Baby spinach, red onion, tomatoes, goat cheese",
                  price: "13.00",
                  restaurant_id: 5)


Menuitem.create!(id: 19,
                  name: "Guacamole Dip",
                  mtype: "food",
                  category: "starter",
                  description: "Served with homemade tortilla chips",
                  price: "10.75",
                  restaurant_id: 5)


Menuitem.create!(id: 20,
                  name: "Louisiana Duck Gumbo",
                  mtype: "food",
                  category: "main",
                  description: "Our signature spicy cajun jumbo, served with basmati rice and toasted baguette",
                  price: "15.00",
                  restaurant_id: 5)


Menuitem.create!(id: 21,
                  name: "Capellini gratin",
                  mtype: "food",
                  category: "main",
                  description: "oyster mushrooms/kale and walenut pesto/jalapeno confit/arugula/bread crumbs/parmesan/pressed capellini pasta",
                  price: "18.00",
                  restaurant_id: 6)


Menuitem.create!(id: 22,
                  name: "Ricotta Cavatelli and duck ragu",
                  mtype: "food",
                  category: "main",
                  description: "sundried olives/radicchio/chicken liver mousse/sage/pecorino",
                  price: "18.00",
                  restaurant_id: 6)

Menuitem.create!(id: 23,
                  name: "Buttermilk panna cotta",
                  mtype: "food",
                  category: "dessert",
                  description: "caramel poached apple/ cheddar and pecan crumble/apple balsamic reduction",
                  price: "9.00",
                  restaurant_id: 6)


Menuitem.create!(id: 24,
                  name: "chocolate budino tart",
                  mtype: "food",
                  category: "dessert",
                  description: "white wine poached pear/caramel sauce/caramel popcorn and peanuts",
                  price: "9.00",
                  restaurant_id: 6)


Menuitem.create!(id: 25,
                  name: "Premium tea",
                  mtype: "drink",
                  category: "starter",
                  description: "Alberta premium rye, organic sweet tea",
                  price: "10.00",
                  restaurant_id: 6)

Menuitem.create!(id: 26,
                  name: "Premium tea",
                  mtype: "food",
                  category: "starter",
                  description: "served with smoked jalapeño-bacon mayo, baby kale,bourbon balsamic vinaigrette",
                  price: "7.00",
                  restaurant_id: 6)

Menuitem.create!(id: 27,
                  name: "Short ribs",
                  mtype: "food",
                  category: "main",
                  description: "miami style short ribs, bbq sauce, string beans",
                  price: "24.00",
                  restaurant_id: 7)


Menuitem.create!(id: 28,
                  name: "Buttermilk Pie",
                  mtype: "food",
                  category: "dessert",
                  description: "buttermilk pie, cookie crumble, compote",
                  price: "5.00",
                  restaurant_id: 7)

Menuitem.create!(id: 29,
                  name: "Dave’s Greens",
                  mtype: "food",
                  category: "starter",
                  description: "burrata cheese, tomatoes, basil, shrimp chips, radish & anchovy vinaigrette ",
                  price: "11.00",
                  restaurant_id: 8)

Menuitem.create!(id: 30,
                  name: "Taipei Style Grilled Corn",
                  mtype: "food",
                  category: "starter",
                  description: "served with chili lime butter, roasted peanuts & scallions ",
                  price: "5.00",
                  restaurant_id: 8)

Menuitem.create!(id: 31,
                  name: "Vegetarian Bento Box",
                  mtype: "food",
                  category: "main",
                  description: "spice fried tofu & peppers /grilled zucchini, Dave’s greens with radish / smoked, mashed potatoes with tarragon cream, chives & hot pepper tapenade ",
                  price: "18.00",
                  restaurant_id: 8)


Menuitem.create!(id: 32,
                  name: "Razzberry cOZmo",
                  mtype: "drink",
                  category: "dessert",
                  description: "raspberry vodka, triple sec, orange juice, cranberry juice and lime ",
                  price: "9.00",
                  restaurant_id: 8)


Menuitem.create!(id: 33,
                  name: "Poutine",
                  mtype: "food",
                  category: "starter",
                  price: "7.95",
                  restaurant_id: 9)

Menuitem.create!(id: 34,
                  name: "French onion soup",
                  mtype: "food",
                  category: "starter",
                  price: "5.95",
                  restaurant_id: 9)


Menuitem.create!(id: 35,
                  name: "Lasagna, Meat or Vegetarian",
                  mtype: "food",
                  category: "main",
                  description: "Lasagna noodles in a tomato sauce, baked with broccoli, mushrooms and spinach, topped with brick cheese. Served with a salad ",
                  price: "16.95",
                  restaurant_id: 9)


Menuitem.create!(id: 36,
                  name: "Small Mediterranean pizza",
                  mtype: "food",
                  category: "main",
                  description: "Black olives, feta cheese, sweet red peppers and artichokes ",
                  price: "11.95",
                  restaurant_id: 9)


Menuitem.create!(id: 37,
                  name: "Steak and Spinach Salad",
                  mtype: "food",
                  category: "starter",
                  description: "Our grilled Strip Loin, sliced and served with baby spinach , onions , peppers and our house vinaigrette.",
                  price: "12.00",
                  restaurant_id: 10)

Menuitem.create!(id: 38,
                  name: "The Shaque Burger  (8oz)",
                  mtype: "food",
                  category: "main",
                  description: "8 0z. of house ground beef, seasoned with our house spice blend, charbroiled, glazed with BBQ sauce and topped with in house smoked bacon and cheddar cheese.",
                  price: "15.00",
                  restaurant_id: 10)

Menuitem.create!(id: 39,
                  name: "The Lerner Sandwich",
                  mtype: "food",
                  category: "main",
                  description: "Smoked and grilled tofu, BBQ glazed, with cheddar cheese, roasted red peppers and shredded lettuce. We promised and we delivered!",
                  price: "10.00",
                  restaurant_id: 10)

Menuitem.create!(id: 40,
                  name: "The Lerner Sandwich",
                  mtype: "food",
                  category: "starter",
                  description: "Marinated and fried up crisp, served dusted in our special seasoning or tossed in one of our signature sauce. Hot, Pirri Pirri, Sweet Chili, Garlic Parmesan, Memphis Red Sauce, BBQ or Jerk Sauce.",
                  price: "12.00",
                  restaurant_id: 10)

Menuitem.create!(id: 41,
                  name: "Vegetable Spring roll",
                  mtype: "food",
                  category: "starter",
                  price: "1.50",
                  restaurant_id: 11)

Menuitem.create!(id: 42,
                  name: "Vegetable Spring roll",
                  mtype: "food",
                  category: "starter",
                  price: "6.25",
                  restaurant_id: 11)

Menuitem.create!(id: 43,
                  name: "Vegetable Spring roll",
                  mtype: "food",
                  category: "main",
                  price: "12.95",
                  restaurant_id: 11)

Menuitem.create!(id: 44,
                  name: "Beef fried noodle",
                  mtype: "food",
                  category: "main",
                  price: "8.95",
                  restaurant_id: 11)


Menuitem.create!(id: 45,
                  name: "Blueberi Lemonade",
                  mtype: "drink",
                  category: "dessert",
                  description: "Stoli Blueberi, Limoncello, soda, blueberry juice, lemon juice",
                  price: "9.00",
                  restaurant_id: 12)


Menuitem.create!(id: 46,
                  name: "Moscow Mule",
                  mtype: "drink",
                  category: "starter",
                  description: "Stolichnaya, Old Tyme ginger beer, lime juice, pickled ginger",
                  price: "8.00",
                  restaurant_id: 12)

Menuitem.create!(id: 47,
                  name: "Scallop Crudo",
                  mtype: "food",
                  category: "starter",
                  description: "Citrus-Beet Puree/Crispy Quinoa/Pea Shoots/Orange/Dill/Pickled Chili/Cold/Pressed Canola",
                  price: "13.00",
                  restaurant_id: 12)


Menuitem.create!(id: 48,
                  name: "Seared Scallops",
                  mtype: "food",
                  category: "main",
                  description: "Marinated Beets/Smoked Jalapeno & Corn Puree/Pickled Corn/Cucumber/Cherry Tomatoes/Orange Segments/Pickled Raisins/Crushed Pinenuts",
                  price: "17.00",
                  restaurant_id: 12)









Rating.create!(rater_id: 1,       
                 price: 3,
                 food: 5,
                 mood: 3,
                 staff: 5,
                 comment: "We definitely enjoyed our meal at El Camino, and we had some of the best tacos we’ve had in town. Since it is a bar, the noise level is really quite high so be prepared for that. We were told there is parking behind the restaurant, but we parked on the side streets because it was the evening. I also almost missed the restaurant because it was on the lower level. It is located right between the hair salon Le Loft, and Elgin Street Diner, just a heads up!",
                 restaurant_id: 1)

Rating.create!(rater_id: 1,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Im not a fan of your regular old pub, but there is something different with this place. Maybe it is the fact that they have local art hanging on the wall for sale, or perhaps it is the fun events they put on all the time.",
                 restaurant_id: 5)

Rating.create!(rater_id: 1,
                 price: 2,
                 food: 2,
                 mood: 3,
                 staff: 4,
                 comment: "
I ordered lasagna, the worst I ever had. It was expensive. The sauce was spicy, and very greasy. I would not recommend it to anyone....... ",
                 restaurant_id: 9)


Rating.create!(rater_id: 1,
                 price: 4,
                 food: 4,
                 mood: 4,
                 staff: 4,
                 comment: "A nice restaurant to sit and eat. ",
                 restaurant_id: 9)


# Rating.create!(rater_id: 1,
#                  price: 5,
#                  food: 3
#                  mood: 5,
#                  staff: 5,
#                  comment: "For blues fans, there is great sunday afternoon of live music. It is a nice little joint with great ambiance. The service is great - it does not take long before they get to know their customers. The downside is the food. There is only a few items that are decent . Go for the quesedillas or the pizza (atomic combo is great!). Stay away from the nachos, there is hardly anything on them ",
#                  restaurant_id: 5)


Rating.create!(rater_id: 1,
                 price: 4,
                 food: 5,
                 mood: 3,
                 staff: 5,
                 comment: "If you are looking for great tacos in Ottawa, El Camino has got you covered! ",
                 restaurant_id: 1)


Rating.create!(rater_id: 1,
                 price: 2,
                 food: 2,
                 mood: 3,
                 staff: 1,
                 comment: "My friend and I used to go for brunch on Saturday mornings until we could not deal with the service anymore. Imagine eating your breakfast and having the server hovering around you, asking every two minutes if you are finished. She finally took my plate without asking, insisting that I must be done, despite the fact that I was still eating. To top it off, she then left us sitting at the table with no food for a good 15 minutes before she brought the bill. NO TIP. ",
                 restaurant_id: 5)


Rating.create!(rater_id: 2,
                 price: 4,
                 food: 5,
                 mood: 3,
                 staff: 3,
                 comment: "Although I enjoyed my hot chocolate, I wasn’t such a big fan of the place. The portions were too big. Is there such thing as too much hot chocolate? Well these mugs were pretty big, which in this case I didn’t think was a good thing (it would be great if they had a small and a large option and then changed the prices accordingly). The place and counters were a mess, and it was very crowded (cafeteria style). The staff were either not around or just somewhat helpful. I am curious to go back though to try out some of their other offerings and have the same hot chocolate again. Next time though I think I might take my hot chocolate to go and enjoy it on one of the benches out in front of the market so I can take enjoy the constant buzz of the Byward market.",
                 restaurant_id: 2)


Rating.create!(rater_id: 2,
                 price: 5,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "Sooooo good!!! Been a few times now and I have not been disappointed at all. The DBK is my favourite and the portions are perfect for sure. The poutine is amazing too!!! Sweet potato fries real awesome too!!! :) ... Worth a try for sure. They have a some pretty great drink mixes too. So impressed everytime :) ",
                 restaurant_id: 10)


Rating.create!(rater_id: 2,
                 price: 4,
                 food: 5,
                 mood: 3,
                 staff: 4,
                 comment: "Great meal. Pork belly & cucumber salad was delicious. Risotto also very good. Will definitely be going back. ",
                 restaurant_id: 12)


Rating.create!(rater_id: 2,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "I started off with 3 cicchetti all served on a fresh slice of baguette. They are similar to a crostini without the bread being toasted. The Baccara Cappucina, translates to salt cod capuchin-style, is a popular dish in Venice. This dish is prepared the same way as the Capuchin monks. The salted cod is served as a quenelle topped with a few pieces of plump raisins and capers. It is light and smooth with a nice balance of sweetness, saltiness and acidity. ",
                 restaurant_id: 3)


Rating.create!(rater_id: 2,
                 price: 2,
                 food: 2,
                 mood: 2,
                 staff: 2,
                 comment: "This place has really been dropping in quality lately. ",
                 restaurant_id: 5)



Rating.create!(rater_id: 2,
                 price: 5,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "The smoked ricotta is a must order, my favorite dish of the night. Just one bite, the ricotta provides a burst of smokiness from the cedar wood, elevated with the sweetness of honey and the freshness of the fennel. Finally, if you like sardines, order the sardèle in saor. It is oily in a good sense topped with onions braised in white wine, and toasted pine nuts for texture. ",
                 restaurant_id: 1)


Rating.create!(rater_id: 2,
                 price: 5,
                 food: 5,
                 mood: 3,
                 staff: 4,
                 comment: "Excellent meal. Great drinks too.",
                 restaurant_id: 8)

Rating.create!(rater_id: 3,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Ottawa is not known for its quality chinese food. Jadeland is the exception. This place has the closest I have come to authentic home cooking since I have moved out of my parents  house. Good food, served in large portions at reasonable prices.",
                 restaurant_id: 11)

Rating.create!(rater_id: 3,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 3,
                 comment: "If you are used to or want the type of chinese food served in food courts, they have this too. For those who want the real stuff, come to Jadeland!",
                 restaurant_id: 10)

Rating.create!(rater_id: 3,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 3,
                 comment: "Was actually surprised with the quality of the food. I would not say it beats true Southern BBQ, but, it was quite tasty, flavorful and tender.
Will definitely be returning.
A side note: Server was nice and effective, but lacked a bit of social skills",
                 restaurant_id: 10)


Rating.create!(rater_id: 3,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Such friendly people and such good food.",
                 restaurant_id: 11)



Rating.create!(rater_id: 3,
                 price: 1,
                 food: 1,
                 mood: 1,
                 staff: 1,
                 comment: "Food sucked. I mean sucked. More bone than meat. Worst coleslaw ever. Even fries were bad. Should do well after they go bankrupt and new professional management takes over. Until then, AVOID",
                 restaurant_id: 10)


Rating.create!(rater_id: 3,
                 price: 2,
                 food: 2,
                 mood: 4,
                 staff: 5,
                 comment: "This was my first real visit to this restaurant beyond a casual drink, and I likely will be sticking to casual drinks in the future. Is it really so difficult to have more than one vegetarian option on a menu?",
                 restaurant_id: 4)

Rating.create!(rater_id: 3,
                 price: 4,
                 food: 5,
                 mood: 3,
                 staff: 3,
                 comment: "Seared Scallops - Had this tonight as their blind order app, and it was melt in your mouth amazing.",
                 restaurant_id: 12)

Rating.create!(rater_id: 4,
                 price: 4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "Defintely a go to! Petite portions with a multitude of ingredients that make each dish unique, along with good service and a warm atmosphere.",
                 restaurant_id: 12)


Rating.create!(rater_id: 4,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Chefs, it would seem, happily hang out at Union 613. Open till 2 a.m. each night, it has practically been designed with post-shift relaxing for other restaurant workers in mind. As we left that Thursday, my buddy and I bumped into a chef de cuisine from a leading ByWard Market kitchen, unwinding at the bar.

Here then is one strategy for getting the most dining satisfaction from Union 613. Ask the person sitting nearest to you: “Are you a chef?” If the answer is yes, ask your server for what the pro is having.

The answer that Thursday was fried chicken — “buttermilk fried yardbird,” as it’s known in Union’s down-home parlance — and cheesy, garlicky grits. These dishes have already emerged as signature offerings at the restaurant, which opened in mid-July. I’ve enjoyed them twice. The chicken, likely brined in buttermilk, cooked sous-vide and then finished in the deep fryer, was succulent and tasty under its salty, crunchy crust. The rich, rib-sticking grits ­—
                           made from whole kernels of hominy rather than the usual cornmeal — were solid and satisfying.",
                 restaurant_id: 7)

Rating.create!(rater_id: 4,
                 price: 4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "This is just an awesome place to come grab some amazing food with your buddy. They have some screens so you can watch the game. The food was just out of this world. Jamaican jerk anything! lol Mac and cheese was just incredible. Already been back 3 times with friends that visit from out of town.",
                 restaurant_id: 10)


Rating.create!(rater_id: 4,
                 price: 4,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Town’s in my top ten. And for Modern Italian, pretty much at the top of the heap.",
                 restaurant_id: 6)

Rating.create!(rater_id: 4,
                 price: 4,
                 food: 4,
                 mood: 4,
                 staff: 4,
                 comment: "
The menu seems to be trying too hard to be many things for many people. It’s too long and too all-over-the-place to inspire ",
                 restaurant_id: 5)


Rating.create!(rater_id: 4,
                 price: 4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "Union Local 613 has been at the top of this list for quite a while. They are a Canadian take on Southern hospitality, featuring a cocktail menu with a focus on bourbon. ",
                 restaurant_id: 7)


Rating.create!(rater_id: 4,
                 price: 3,
                 food:  3,
                 mood: 3,
                 staff: 3,
                 comment: "This is a very small place holding about 50 people. It was almost full when I arrived near 1pm and I was unfortunate enough to be seated at a table right near the door, which I dislike. Luckily, the lunchtime rush had slowed a bit by the time I got to the place so I wasn’t bothered by too much traffic around my table. The service overall was adequate, if a bit rushed and perfunctory, but I noted that there were only two servers covering a pretty good size crowd so I suppose I can’t complain too much in that regard. The interior is a bit plain but not uncomfortable and it seemed to be reasonably clean. The menu is fairly extensive but doesn’t contain a lot that can’t easily be found in countless other Chinese restaurants. The sign out front states that Cantonese and Szechuan cuisine but, really, most of what on offer is more Cantonese in character with just a nod to Sichuan. ",
                 restaurant_id: 11)


Rating.create!(rater_id: 5,
                 price: 5,
                 food:  5,
                 mood: 5,
                 staff: 5,
                 comment: "I sometimes wish Town‘s menu weren’t so unrelentingly rich, but I admire very much the well chosen ingredients, the delicacy in the structure of the dishes, the casual, boisterous feel of the place.
                           a table right near the door, which I dislike. Luckily, the lunchtime rush had slowed a bit by the time I got to the place so I wasn’t bothered by too much traffic around my table. The service overall was adequate, if a bit rushed and perfunctory, but I noted that there were only two servers covering a pretty good size crowd so I suppose I can’t complain too much in that regard. The interior is a bit plain but not uncomfortable and it seemed to be reasonably clean. The menu is fairly extensive but doesn’t contain a lot that can’t easily be found in countless other Chinese restaurants. The sign out front states that Cantonese and Szechuan cuisine but, really, most of what on offer is more Cantonese in character with just a nod to Sichuan. ",
                 restaurant_id: 3)


Rating.create!(rater_id: 5,
                 price: 3,
                 food:  5,
                 mood: 5,
                 staff: 3,
                 comment: "Already looking forward to our next visit! ",
                 restaurant_id: 1)

Rating.create!(rater_id: 5,
                 price: 3,
                 food:  5,
                 mood: 5,
                 staff: 5,
                 comment: "amazing atmosphere, amazing music, fun and friendly staff and on top of it all the food is absolutely amazing. I keep going back! My favourite tacos in Ottawa. ",
                 restaurant_id: 1)


Rating.create!(rater_id: 5,
                 price: 5,
                 food:  5,
                 mood: 3,
                 staff: 4,
                 comment: "Best poutine ive had in a long time :) ",
                 restaurant_id: 9)


Rating.create!(rater_id: 5,
                 price: 1,
                 food:  2,
                 mood: 4,
                 staff: 4,
                 comment: "I am writing this the morning after my meal at Union. It was really terrible. And I love food but this was so bad I had to write a review. I had the hog jowl (translation- pigs cheek) and brocolli side- and before you can say hog jowls a bit of a risk- its really not. I have eaten it many times at other spots and its been exceptional. This was terrible- there was almost no meat, they had attempted to render the fat but hadnt and it was thick with charred grissle that did not taste like anything but burn. That coupled with the $15 cocktails (wtf) in the Speakeasy combined to make a night that was overpriced and underwhelming, despite the great company I was in. Sorry Union- ive been a fan from the start, but that was unacceptable. ",
                 restaurant_id: 7)


Rating.create!(rater_id: 5,
                 price: 5,
                 food:  5,
                 mood: 5,
                 staff: 5,
                 comment: "My Mum has been here before with friends, so she finally took me this weekend- I absolutely loved it. Huge portions, perfectly cooked, and definitely the right price. Instead of two small spring rolls you get one big one- I had the vegetarian and could have savoured it for hours! Their king oyster mushroom and baby bok choi dish was positively lip-smackingly good, as was their shrimp and cashew nut. The menu is extensive- I will definitely be going back to try all of it ",
                 restaurant_id: 11)


Rating.create!(rater_id: 5,
                 price: 5,
                 food:  5,
                 mood: 5,
                 staff: 5,
                 comment: "This place knows how to make god damn ribs okay. When I need some delicious meat in my life...this is where I go. These are the kind of ribs that turn vegetarians into carnivores in less than 15 minutes. I came here tonight for the ribs...I ended up also getting Mac and cheese, onion rings, coleslaw and and god damn pouter with pulled pork on top. Do you even meat bro? ",
                 restaurant_id: 10)


Rating.create!(rater_id: 6,
                 price: 5,
                 food:  5,
                 mood: 4,
                 staff: 5,
                 comment: "How I missed this place all these years I don not know. Good ambiance, lovely service and great food. My friend and I have been twice now for dinner and have enjoyed both visits. The steak and fries are fabulous, as is the tuna dish. Go one of the evenings they offer BYOB for a small $5.00 cork fee (check out those venings on their website). Better yet, go Wednesday night for $5 martini night. ",
                 restaurant_id: 4)



Rating.create!(rater_id: 6,
                 price: 5,
                 food:  5,
                 mood: 5,
                 staff: 5,
                 comment: "Great evening enjoying tasty food with my best friends, favorites included the smelts, the smoked ricotta appetizer, the flatiron steak and creamy polenta. The cappuccino and tiramisu ended the evening beautifully. ",
                 restaurant_id: 3)


Rating.create!(rater_id: 6,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Definitely one of Ottawa s finest restaurants. Everything we ordered was superb, lovely wine list and great service..",
                 restaurant_id: 12)


Rating.create!(rater_id: 6,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 4,
                 comment: "The multitude of mediocre restaurants in O-Town should take note! Allium is unassuming, unpretentious, but first class all the way.",
                 restaurant_id: 3)


Rating.create!(rater_id: 6,
                 price: 4,
                 food: 4,
                 mood: 4,
                 staff: 4,
                 comment: "Shark fin soup! My main point is that there are too few sharks left for me to support a restaurant that serves this dish. The food was good and reasonably priced. I tried some soft white chicken and vegetables cooked in broth. Crab soup was fine, although not very crabby. There seemed to be an unusually good emphasis on seasonal fresh vegetables. I would like to return once shark fin is off the menu",
                 restaurant_id: 11)


Rating.create!(rater_id: 6,
                 price: 2,
                 food: 2,
                 mood: 4,
                 staff: 5,
                 comment: "had not been for a while. Meatballs seem to be the only go to dish. But you can maKe those so much better and cheaper at home. Had a cod thingy with egg which just tasted of poor quality mayo. Potatoes pecorino were fried and dried (out). Wine is overpriced but taps are good value. Staff is energetic but offerings are just profit centers (less expensive components).",
                 restaurant_id: 6)

Rating.create!(rater_id: 6,
                 price: 1,
                 food: 1,
                 mood: 4,
                 staff: 4,
                 comment: "We were excited to try this resaturant, the service was slow. the food was dry and overcooked .",
                 restaurant_id: 10)


Rating.create!(rater_id: 7,
                 price: 3,
                 food: 4,
                 mood: 4,
                 staff: 1,
                 comment: "The server has been straight up RUDE.  We asked if we could wait at the bar until a table was free. He said yes but when a table became free he gave it to someone who had arrived after us. So I politely asked him what happened and hesaid You can not take up space at the bar and then switch to a table Seriously?! I asked to speak to the manager but she never approached us. ",
                 restaurant_id: 1)

Rating.create!(rater_id: 7,
                 price: 4,
                 food: 4,
                 mood: 5,
                 staff: 5,
                 comment: "Town consistently has the best service and atmosphere in town.",
                 restaurant_id: 6)


Rating.create!(rater_id: 7,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "What a great addition to the food scene in downtown Ottawa! Went for lunch with 2 ladies from work. The food was fantastic, lovely wine list. The dishes are light and reasonably priced. This is not your typical Italian fare. If you are looking for meatball sandwiches, veal piccada or chicken parm, do not come here. No red sauce or breaded cutlets, which makes this place a gem. If you are the slightest bit adventurous and enjoy original, simple food made with love and care, come here. 3 mains, 3 glasses of wine and 2 dessert for under $70. I cannot wait to go back!",
                 restaurant_id: 3)

Rating.create!(rater_id: 7,
                 price: 3,
                 food: 3,
                 mood: 4,
                 staff: 5,
                 comment: "This place is nothing special, the drinks were very average/close to below average. Smoothie was mediocre. Service was pretty good, waitress was friendly and was quick on refilling water, taking our orders and bringing our food. Probably will not go again.",
                 restaurant_id: 2)

Rating.create!(rater_id: 7,
                 price: 4,
                 food: 5,
                 mood: 5,
                 staff: 4,
                 comment: "Worth the long wait in line! Fish tacos are to die for, Ox tongue and a close second. The tuna tartare taco is unique and refreshing. We ordered the calamari for an appetizer an it was the best calamari we have ever had. Beware of the mixed drinks: they are strong and will hit you hard. Will absolutely go back",
                 restaurant_id: 1)

Rating.create!(rater_id: 7,
                 price: 4,
                 food: 5,
                 mood: 5,
                 staff: 3,
                 comment: "The food is delicious, but I am so sick of never being able to get in. I hate the  leave your number, go have a drink elsewhere and we will text you when your table is ready  thing they do. All this means is there are often empty tables for extended periods of time while they wait for people to pay bills elsewhere. Just take reservations already.",
                 restaurant_id: 1)

Rating.create!(rater_id: 7,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "It is our go to place for a Friday night family dinner. Best pizza we have had in Ottawa. Crispy crust, thick layered meat and fresh veggies piled high. Family friendly- great service. Their home made garlic sauce is supreme. Great value and consistently excellent pizza.",
                 restaurant_id: 9)

Rating.create!(rater_id: 8,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "As much as going home is extremely comforting, it is shocking how food can add another dimension of nostalgia!!",
                 restaurant_id: 11)


Rating.create!(rater_id: 8,
                 price: 4,
                 food: 4,
                 mood: 4,
                 staff: 4,
                 comment: "This decently sized place has a large variety of dishes and cooks authentic tasting chinese food",
                 restaurant_id: 11)

Rating.create!(rater_id: 8,
                 price: 4,
                 food: 5,
                 mood: 4,
                 staff: 1,
                 comment: "Was treated incredibly rude by long, dark haired bartender. Will not come back because of how terrible he made my experience there.",
                 restaurant_id: 1)


Rating.create!(rater_id: 8,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "I love this place. Not only is the food amazing but the decor is interesting and inspirational. The atmosphere makes you feel like you are having an intimate dinner and I love that aspect. It is a cozy place that you will feel most welcome.",
                 restaurant_id: 8)


Rating.create!(rater_id: 8,
                 price: 1,
                 food: 1,
                 mood: 1,
                 staff: 1,
                 comment: "Let us break this down in point form:
The worst part is we are not picky eaters. We could go split a $5 foot-long and be happy :)
1. Scallops - amazing
2. Chicken and Waffles - ZERO taste, like air. This could have been because the amazing sauce from the scallops was still lingering, as we had the scallops first.
3. Steak and Frites -
                           Could easily make a better tasting steak at home. I was surprised how tough a medium rare restaurant grade steak was. It tasted like a $5 steak from a grocery store. It was hard to cut with the knife provided. The table would shake as i tried to get through it. It was nice and red, but wow it was tough.
The fries were greasy,
                           and so disappointing. We both ate, call it 20% of the serving.
4.The Banana Creme Brulee was one of the best deserts i have ever had in my life, so it makes up for the BAD dinner.
5. Our waitress tonight (Friday the 7th at 6pm) was horrible. Unfriendly, grumpy and miserable. I left the standard 15% but i did not want to leave a penny
                           (i left the standard tip in hopes everyone shares). It was basically a miserable experience with this waitress. We were trying to be so friendly with her and she made the dinner HORRIBLE.
Sorry you hate your job - guess what, i hated your $150 meal.
I would never go back. I can not believe all the great reviews for a tough steak and greasy fries.",
                 restaurant_id: 12)

Rating.create!(rater_id: 8,
                 price: 4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "The worst part is we are not picky eaters. We could go split a $5 foot-long and be happy :)",
                 restaurant_id: 1)

Rating.create!(rater_id: 8,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "1. Scallops - amazing",
                 restaurant_id: 6)

Rating.create!(rater_id: 9,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "1. 2. Chicken and Waffles - ZERO taste, like air. This could have been because the amazing sauce from the scallops was still lingering, as we had the scallops first.",
                 restaurant_id: 10)


Rating.create!(rater_id: 9,
                 price: 4,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "3. Steak and Frites - Could easily make a better tasting steak at home. I was surprised how tough a medium rare restaurant grade steak was. It tasted like a $5 steak from a grocery store. It was hard to cut with the knife provided. The table would shake as i tried to get through it. It was nice and red, but wow it was tough.",
                 restaurant_id: 8)

Rating.create!(rater_id: 9,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "The fries were greasy, and so disappointing. We both ate, call it 20% of the serving.",
                 restaurant_id: 6)


Rating.create!(rater_id: 9,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "4. The Banana Creme Brulee was one of the best deserts i have ever had in my life, so it makes up for the BAD dinner.",
                 restaurant_id: 3)


Rating.create!(rater_id: 9,
                 price: 1,
                 food: 1,
                 mood: 4,
                 staff: 4,
                 comment: "4. 5. Our waitress tonight (Friday the 7th at 6pm) was horrible. Unfriendly, grumpy and miserable. I left the standard 15% but i did not want to leave a penny (i left the standard tip in hopes everyone shares). It was basically a miserable experience with this waitress. We were trying to be so friendly with her and she made the dinner HORRIBLE.",
                 restaurant_id: 4)


Rating.create!(rater_id: 9,
                 price: 4,
                 food: 4,
                 mood: 4,
                 staff: 4,
                 comment: "4. Sorry you hate your job - guess what, i hated your $150 meal.",
                 restaurant_id: 5)

Rating.create!(rater_id: 9,
                 price: 4,
                 food: 3,
                 mood: 3,
                 staff: 4,
                 comment: "I would never go back. I can not believe all the great reviews for a tough steak and greasy fries.",
                 restaurant_id: 7)

Rating.create!(rater_id: 10,
                 price: 3,
                 food: 3,
                 mood: 3,
                 staff: 3,
                 comment: " Jadeland Restaurant is a satisfactory Chinese restaurant.  Not too bad to spend on a snowy Saturday afternoon.",
                 restaurant_id: 11)

Rating.create!(rater_id: 10,
                 price: 4,
                 food: 3,
                 mood: 4,
                 staff: 4,
                 comment: " The likelihood of taking home a hefty doggie bag filled with pasta or pizza is big, I’d say. North and Navy’s, it seems to me after three visits, is a place where massive portions frequently matter most — markedly and unfortunately ahead of craft or finesse. I was glad about this much: the presence of local beverages such as Harvey and Vern’s Olde Fashioned Sodas and Kichesippi brews, as well as Illy coffee; some nicely seasoned and tender, albeit too greasy, calamari ($11.99); the ricotta and shrimp ravioli ($17.99) — one of only two dishes featuring pasta made in-house — even if its tomato concasse sauce was too pasty.",
                 restaurant_id: 3)


Rating.create!(rater_id: 10,
                 price: 4,
                 food: 4,
                 mood: 3,
                 staff: 4,
                 comment: " Simon Bell, chef at Oz Kafe, has his own theory. Here, in the depths of winter, as in Seoul (although temperatures aren’t nearly as frigid there), we’re craving “hearty, rich, stick-to-your-ribs dishes.” And non-Korean restaurants are reinventing East Asian cuisine. Leading the pack is a pub in the unlikely town of Carp. A decade ago, Sunna Na, co-owner (and pastry chef) of The Swan at Carp, cooked a batch of barbecued pork for her customers. Other restaurants now follow. A new trend? We’d have to say yes. So come on, you Koreanophiles — neophytes and all the rest — get while the gettin’s good!",
                 restaurant_id: 8)

Rating.create!(rater_id: 11,
                 price: 4,
                 food: 5,
                 mood: 3,
                 staff: 5,
                 comment: " Very few of the at-best ordinary 14 items that I and my dining companions have tried prompted us to finish them with much enthusiasm.",
                 restaurant_id: 4)

Rating.create!(rater_id: 11,
                 price: 4,
                 food: 5,
                 mood: 2,
                 staff: 2,
                 comment: " Service quality declining. Customers not treated equally. Got a free drink cos the waiter was giving me favouritism while the rest in my party got bad service. Not cool. ",
                 restaurant_id: 4)


Rating.create!(rater_id: 11,
                 price: 4,
                 food: 4,
                 mood: 3,
                 staff: 4,
                 comment: " Friends did not recommend it but I decided to try it anyways. I went there for lunch few days ago and I liked it. I had the rib tips with sweet potato fries... All of which were excellent! My friend had the pulled pork sandwich and their Mac&Cheese on the side (I know what a fatass) and she liked it but found the pulled pork a little dry",
                 restaurant_id: 10)

Rating.create!(rater_id: 11,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: " Ate at Buzz on Friday night with a group of six, including our two grandmas. Sat at one of their large booths which are great for a group of 4+ looking for a bit of privacy. Service was excellent and drinks and appetizers came promptly. Chicken, ahi tuna and short rib gnocchi dishes were all well received. Steak frites dish was cooked nicely, though not abundantly clear why it is their specialty. Buzz is by no means a cheap night out but would be perfect for a romantic date night. Played great music as well.",
                 restaurant_id: 4)

Rating.create!(rater_id: 11,
                 price: 1,
                 food: 1,
                 mood: 3,
                 staff: 3,
                 comment: " I can not believe people liked this place. We ordered five dishes.  All of them were horrible. Really bland and completely unimpressive. Some of them were inedible. The only person in our family who liked it was our one year old daughter. We will never go back. Sorry to be harsh but it is the truth.",
                 restaurant_id: 11)

Rating.create!(rater_id: 11,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "This is just an awesome place to come grab some amazing food with your buddy. They have some screens so you can watch the game. The food was just out of this world. Jamaican jerk anything! lol Mac and cheese was just incredible. Already been back 3 times with friends that visit from out of town.",
                 restaurant_id: 10)

Rating.create!(rater_id: 11,
                 price: 5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "carnivore heaven",
                 restaurant_id: 10)


Rating.create!(rater_id: 12,
                 price: 1,
                 food: 2,
                 mood: 3,
                 staff: 2,
                 comment: "I have eaten the pizza here (Colonnade on Bank Street) on Fridays off and on for some time now. The main attraction for us is the availability of decent gluten free pizza. Remember, I said decent, NOT great. Gluten free pizzas seem to be difficult to make and very expensive.
                           Theirs is ok which is better than poor which is what most places produce. However, last night we order for pick-up and forgot to order directly from the menu. Instead we order 4 toppings. The same 4 toppings on both my large and my wife’s gluten free. Chicken, mushrooms, onions and spinach are the same toppings I have ordered around the world.
                           We usually do not custom order here but we did last night. What a MISTAKE!!!!!!!!!!!!! 2 pizzas = $56.00!!!!!! Yes, because we had “substitutions”. Are you kidding me???!!! $56.00 for 2 pies!!!???? Ultimately, their pies are really ok but not great! Did I say $56.00 yet???!!! They are not $56.00 worth of “OK”! 
                           I spoke to the manager and politely asked if there was a way of selecting a choice and modifying it so it would be a little more reasonable.
                           NO was the answer! No sensitivity or understanding. Not even an apology. She just didn’t care! ",
                 restaurant_id: 9)


Rating.create!(rater_id: 12,
                 price:4,
                 food: 5,
                 mood: 4,
                 staff: 3,
                 comment: "Flavorful. Authentic. Delcious Chinese. Small loud dining atmosphere (be warned) friendly staff.",
                 restaurant_id: 11)

Rating.create!(rater_id: 12,
                 price:5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "This place has an ever-evolving beer menu, including several craft beers you would normally be hard-pressed to find anywhere else. This is easily my  go-to bar when going out, as I always find something new to drink, and can always expect very warm and attentive service, all at a great price. There is a reason that this place, frequented by pretty much all stratas of society from Centretown, is often packed even on weekdays.",
                 restaurant_id: 5)


Rating.create!(rater_id: 12,
                 price:3,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Went to Town on a Thursday night around 6:15PM. It was very busy and we did not have reservations but luckily we got a spot for 2 at the bar. Very intimate little joint. Good, attentive bar staff. We ordered 2 drinks (a local craft stout and a glass of wine) and 2 small plates (octopus carpaccio- which was okay... And the beef carpaccio- which was awesome). Food came out reasonably quick and had good presentation. Meal total was about $50 before tax.",
                 restaurant_id: 6)

Rating.create!(rater_id: 12,
                 price:5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "The food, drinks, decor, and service were amazing! I honestly can not wait to go back.",
                 restaurant_id: 7)

Rating.create!(rater_id: 12,
                 price:4,
                 food: 5,
                 mood: 4,
                 staff: 3,
                 comment: "First visit I had the crispy beef and shrimp fried noodle. It was alot of food and it tasted great. The shrimp were huge and there was ALOT of them. After one visit this place is highly recommended.",
                 restaurant_id: 11)

Rating.create!(rater_id: 12,
                 price:4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "Fried Chicken - Perfectly crispy on the outside, moist in the middle...served on a waffle with maple syrup. Even better than I had in Texas.",
                 restaurant_id: 12)


Rating.create!(rater_id: 13,
                 price:1,
                 food: 1,
                 mood: 4,
                 staff: 4,
                 comment: "Decided to try this place for brunch. I ordered eggs benny. They made the sauce with margarine instead of butter.  ",
                 restaurant_id: 5)


Rating.create!(rater_id: 13,
                 price:4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "Had a wrap and it was very good. Fresh tasting and cooked as per my order. Good service and good value for the money. Recommended. ",
                 restaurant_id: 5)

Rating.create!(rater_id: 13,
                 price:1,
                 food: 1,
                 mood: 3,
                 staff: 4,
                 comment: "Ordered duck gumbo. It was disguisting.  I will not be going back. ",
                 restaurant_id: 5)

Rating.create!(rater_id: 13,
                 price:2,
                 food: 2,
                 mood: 4,
                 staff: 4,
                 comment: "I ordered pizza, the worst I ever had. It was expensive $11.95 for a small. The sauce was spicy, and very greasy. I would not recommend it to anyone....... ",
                 restaurant_id: 9)


Rating.create!(rater_id: 13,
                 price:5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "The soups are always awesome, and the food is delicious and offers great value. The specials change regularly, so switching it up is easy. The Buzz has many special nights, BYOW, Martini Wednesdays, Mojito Thursdays, there is always a reason to go back. The staff are fantastic, and always treat me like family. I have been going to this place for years and do not see that changing anytime soon. Great Job guys ",
                 restaurant_id: 4)


Rating.create!(rater_id: 13,
                 price:3,
                 food: 4,
                 mood: 4,
                 staff: 4,
                 comment: "like the food here, ribs, pulled pork, chicken, side dishes, everything is tasty and flavourful. Quite expensive though but I consider this place more of a specialty place than what you would get in a Montanas or Swiss Chalet. It’s a treat. ",
                 restaurant_id: 10)


Rating.create!(rater_id: 13,
                 price:4,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Service during our meal at the Buzz was phenomenal. We had a number of food restrictions in our group and our server quickly pointed out all the dishes that could be modified to or met the restrictions - he was very friendly and informative. The appetizers were lovely, the crab cake was a great hit and was raved about, however the lobster ravioli left a little to be desired. The bring your own wine and mojito nights are also a great little bonus. ",
                 restaurant_id: 4)

Rating.create!(rater_id: 14,
                 price:5,
                 food: 5,
                 mood: 4,
                 staff: 5,
                 comment: "The real magic of Oz is that its tiny closet of a kitchen has the best karma in town. It’s where cooks go to get unhooked, preparing prix fixe dinners for their own kind at monthly industry nights. In August, chefs, servers, and dishwashers piled in for a “spare parts” themed meal. The first course was called quadruple bypass — salmon, chicken, beef, and lamb hearts. Oz Kafe makes a party out of cooking and eating. And every other restaurant in town benefits from its existence.",
                 restaurant_id: 8)


Rating.create!(rater_id: 14,
                 price:4,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "If you need convincing that dining out has become akin to theatre, just stop by the corner of Elgin Street and Gladstone Avenue and stand at the top of the stairs that lead down to this buzzy new taqueria with an Asian twist. Witness a perpetual house-party scene made up of mobile munchers and sit-down revellers, as well as the kitchen crew in action through a transparent-box-cum-takeout-window. It’s mesmerizing to watch tequila cocktails being shaken, dough being kneaded by hand, fresh tortillas rolling off the machine, and fine-dining-darling chef Matthew Carmichael ruling his roost — at home in the heart of his very own kitchen at last.  ",
                 restaurant_id: 1)


Rating.create!(rater_id: 15,
                 price:4,
                 food: 4,
                 mood: 5,
                 staff: 5,
                 comment: "Good pub food, reliable efficient service with a smile. ",
                 restaurant_id: 5)


Rating.create!(rater_id: 15,
                 price:5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Absolutely wonderful food! Highly recommend the duck for main course. Save room for dessert, the Banoffie Pie is delicious",
                 restaurant_id: 12)


Rating.create!(rater_id: 15,
                 price:4,
                 food: 5,
                 mood: 5,
                 staff: 4,
                 comment: "Best Restaurant in the city!",
                 restaurant_id: 1)


Rating.create!(rater_id: 15,
                 price:4,
                 food: 5,
                 mood: 4,
                 staff: 4,
                 comment: "Dinner starts with boiled peanuts. What...? Yup
Give them a chance, they grow grow on you. I order the fried chicken and grits.
Dinner came quickly and the service was courteous and professional. I had never had grits before and quite enjoyed them. The chicken was really good. The overall quality of the meal was very high and well priced.
Also of interest was the decor and art on exhibit. A break from the usual dining monotony.
I will definitely be back...",
                 restaurant_id: 7)

Rating.create!(rater_id: 15,
                 price:2,
                 food: 2,
                 mood: 4,
                 staff: 4,
                 comment: "Give them a chance, they grow grow on you. I order the fried chicken and grits.",
                 restaurant_id: 5)


Rating.create!(rater_id: 15,
                 price:4,
                 food: 5,
                 mood: 5,
                 staff: 4,
                 comment: "Dinner came quickly and the service was courteous and professional. I had never had grits before and quite enjoyed them. The chicken was really good. The overall quality of the meal was very high and well priced.",
                 restaurant_id: 1)


Rating.create!(rater_id: 15,
                 price:5,
                 food: 5,
                 mood: 5,
                 staff: 5,
                 comment: "Also of interest was the decor and art on exhibit. A break from the usual dining monotony.",
                 restaurant_id: 3)



Ratingitem.create!(rate: 5,
                 menuitem_id: 19,
                 rater_id: 1)

Ratingitem.create!(rate: 2,
                 menuitem_id: 35,
                 rater_id: 1)

Ratingitem.create!(rate: 4,
                 menuitem_id: 35,
                 rater_id: 1)

Ratingitem.create!(rate: 2,
                 menuitem_id: 18,
                 rater_id: 2)


Ratingitem.create!(rate: 2,
                 comment: "The burger was tasty if not a might flat and unsubstantial, and certainly the large shard of iceberg lettuce did not make it look any more appetizing.",
                 menuitem_id: 16,
                 rater_id: 3)

Ratingitem.create!(rate: 4,
                 menuitem_id: 12,
                 rater_id: 5)

Ratingitem.create!(rate: 5,
                 menuitem_id: 2,
                 rater_id: 5)

Ratingitem.create!(rate: 5,
                 comment: "Greatest coffee ive had in my life! ",
                 menuitem_id: 4,
                 rater_id: 5)

Ratingitem.create!(rate: 5,
                 menuitem_id: 33,
                 rater_id: 5)

Ratingitem.create!(rate: 1,
                 comment: "cold and dry ",
                 menuitem_id: 39,
                 rater_id: 6)


Ratingitem.create!(rate: 4,
                 menuitem_id: 2,
                 rater_id: 7)

Ratingitem.create!(rate: 3 ,
                 menuitem_id: 10,
                 rater_id: 7)


Ratingitem.create!(rate: 3,
                 comment: "no unique flavor ",
                 menuitem_id: 7,
                 rater_id: 7)

Ratingitem.create!(rate: 5 ,
                 menuitem_id: 4,
                 rater_id: 8)

Ratingitem.create!(rate: 5,
                 comment: "delicious with a soft texture ",
                 menuitem_id: 23,
                 rater_id: 8)


Ratingitem.create!(rate: 5 ,
                 menuitem_id: 39,
                 rater_id: 9)

Ratingitem.create!(rate: 4 ,
                 menuitem_id: 32,
                 rater_id: 9)


Ratingitem.create!(rate: 4 ,
                 menuitem_id: 24,
                 rater_id: 9)

Ratingitem.create!(rate: 5,
                 comment: "shrimp cooked to perfection ",
                 menuitem_id: 13,
                 rater_id: 11)


Ratingitem.create!(rate: 5 ,
                 menuitem_id: 40,
                 rater_id: 11)


Ratingitem.create!(rate: 5,
                 comment: "very well cooked dish! ",
                 menuitem_id: 44,
                 rater_id: 12)


Ratingitem.create!(rate: 5 ,
                 menuitem_id: 18,
                 rater_id: 12)

Ratingitem.create!(rate: 5 ,
                 menuitem_id: 18,
                 rater_id: 13)

Ratingitem.create!(rate: 1 ,
                 menuitem_id: 20,
                 rater_id: 13)


Ratingitem.create!(rate: 4 ,
                 menuitem_id: 40,
                 rater_id: 13)

Ratingitem.create!(rate: 5,
                 comment: "phenomenal!!!",
                 menuitem_id: 14,
                 rater_id: 13)

Ratingitem.create!(rate: 5 ,
                 menuitem_id: 20,
                 rater_id: 15)

Ratingitem.create!(rate: 5,
                 comment: "mussels beautifully cooked :D",
                 menuitem_id: 2,
                 rater_id: 15)