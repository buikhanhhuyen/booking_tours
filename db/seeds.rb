# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! username: "admin", email: "admin@email.com",
  password: "123456", password_confirmation: "123456", role: :admin
User.create! username: "user", email: "user@email.com",
  password: "123456", password_confirmation: "123456"

(1..10000).each do |i|
  User.create! username: "user-#{i}", email: "user-#{i}@email.com",
    password: "123456", password_confirmation: "123456"
end

Category.create! title: "Du lich trong nuoc", description: "day la description rat la dai"
Category.create! title: "Du lich ngoai nuoc", description: "day la description rat la dai"
Category.create! title: "Du lich sinh thai", description: "day la description rat la dai"

Discount.create! name: "Happy Christmas", percent: "20",
  description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillu",
  start_date: "10/12/2016", end_date: "31/12/2016"

Discount.create! name: "Happy New Year", percent: "30",
  description: Faker::Lorem.paragraph,
  start_date: "25/12/2016", end_date: "25/01/2017"

Discount.create! name: "Family for Year", percent: "35",
  description: Faker::Lorem.paragraph,
  start_date: "15/01/2017", end_date: "15/02/2017"

Discount.create! name: "Valentine", percent: "25",
  description: Faker::Lorem.paragraph,
  start_date: "01/02/2017", end_date: "25/02/2017"

Discount.create! name: "Happy xmas", percent: "25",
  description: Faker::Lorem.paragraph,
  start_date: "10/12/2016", end_date: "10/01/2017"

Place.create! name: "Bangkok", description: "Bangkok is the capital and most populous city of Thailand. It is known in Thai as Krung Thep Maha Nakhon. The city occupies 1,568.7 square kilometres (605.7 sq mi) in the Chao Phraya River delta in Central Thailand, and has a population of over 8 million, or 12.6 percent of the country's population. Over 14 million people (22.2 percent) live within the surrounding Bangkok Metropolitan Region, making Bangkok an extreme primate city, significantly dwarfing Thailand's other urban centres in terms of importance. There are 581 high-rise buildings in the city, ranking number 5 in the world."
Place.create! name: "Siem Reap", description: "Siem Reap International Airport is Cambodia's busiest airport serving Siem Reap, a popular tourist destination due to nearby Angkor Wat. It is the busiest airport in Cambodia in terms of passenger traffic. The airport's new terminal was inaugurated on 28 August 2006. The Cambodian government has plans to replace the airport with a new one, 60 km from Siem Reap."
Place.create! name: "Puerto Princesa", description: "Palawan officially the Province of Palawan, is an archipelagic province of the Philippines that is located in the Mimaropa region. It is the largest province in the country in terms of total area of jurisdiction. Its capital is the City of Puerto Princesa, but it is governed independently from the province as a highly urbanized city."
Place.create! name: "Paris", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "TP HCM", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "New Yorks", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "Tokyo", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "Kyoto", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "Ha Noi", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "TP Ho Chi Minh", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
Place.create! name: "Da Lat", description: "The City of London is a city and county within London. It constituted most of London from its settlement by the Romans in the 1st century AD to the Middle Ages, but the agglomeration has since grown far beyond the City's borders. The City is now only a tiny part of the metropolis of London, though it remains a notable part of central London. Administratively, it forms one of the 33 local authority districts of Greater London; however, the City of London is not a London borough, a status reserved for the other 32 districts (including London's only other city, the City of Westminster)."
20.times {
  Place.create! name: Faker::Address.city, description: Faker::Lorem.paragraph
}

Tour.create! name: "Europe Escape - 12 Days",
  category_id: "1", start_place_id: rand(60) + 1, end_place_id: rand(60) + 1, price: "1275",
  currency: "usd", start_date: "22/12/2016", end_date: "03/01/2017", discount_id: "1",
  min_visitors: "5", max_visitors: "12", meals: "11 breakfast, 6 dinners",
  accommodation: "11 nights' accommodation in twin rooms",
  transport: "Modern air conditioned coach with reclining seats, TV for showing DVDs, and toilet",
  additional_services: "
    Free Wi-fi in all hotels
    All taxes and fees
    Any public transport used as part of the tour (excludes free days)
    Free Expat Explore tour souvenir"

Tour.create! name: "Trip on Vietnam",
  category_id: "1", start_place_id: rand(11) + 1, end_place_id: rand(11) + 1, price: "3576",
  currency: "usd", start_date: "03/02/2017", end_date: "10/02/2017", discount_id: "4",
  min_visitors: "5", max_visitors: "12", meals: "11 breakfast, 6 dinners",
  accommodation: "11 nights' accommodation in twin rooms",
  transport: "Modern air conditioned coach with reclining seats, TV for showing DVDs, and toilet",
  additional_services: "
    Free Wi-fi in all hotels
    All taxes and fees
    Any public transport used as part of the tour (excludes free days)
    Free Expat Explore tour souvenir"

Tour.create! name: "Japan Advanture",
  category_id: "1", start_place_id: rand(11) + 1, end_place_id: rand(11) + 1, price: "1759",
  currency: "usd", start_date: "22/12/2016", end_date: "03/01/2017",
  min_visitors: "5", max_visitors: "12", meals: "11 breakfast, 6 dinners",
  accommodation: "11 nights' accommodation in twin rooms",
  transport: "Modern air conditioned coach with reclining seats, TV for showing DVDs, and toilet",
  additional_services: "
    Free Wi-fi in all hotels
    All taxes and fees
    Any public transport used as part of the tour (excludes free days)
    Free Expat Explore tour souvenir"

Tour.create! name: "One Life Adventures - Tokyo",
  category_id: "1", start_place_id: rand(11) + 1, end_place_id: rand(11) + 1,
  price: "2507", currency: "usd", start_date: "22/12/2016", end_date: "05/01/2017",
  min_visitors: "7", max_visitors: "15", discount_id: "5",
  meals: "Most breakfasts + 3 lunches + 3 dinners
    * The island hopping trip in El Nido also includes beer and rum",
  accommodation: "1 night in Manila at a boutique hostel
    1 night in Puerto Princesa at a beautiful new boutique hotel
    2 nights in Port Barton in beachfront bungalows
    1 night in beachfront tents on our Islander Experience
    4 nights in El Nido at a boutique hostel or guesthouse",
  transport: "All transport including taxis, domestic flights, buses, vans, and tricycles",
  additional_services: "
    International flights to/from the Philippines
    Travel Insurance
    Airport pickup if not arriving on the first day of tour
    Visas (if required)
    Flights back from Puerto Princesa to anywhere else in the Philippines
    Ziplining local payment (PHP500)"

20.times {
  Tour.create! name: Faker::Name.title,
    category_id: rand(3) + 1, start_place_id: rand(60) + 1, end_place_id: rand(60) + 1, price: rand(500..1000),
    currency: :usd, start_date: Faker::Time.between(DateTime.now + 2, DateTime.now + 4), end_date: Faker::Time.between(DateTime.now + 9, DateTime.now + 12), discount_id: rand(4) + 1,
    min_visitors: rand(3) + 5, max_visitors: rand(8) + 5, meals: Faker::Lorem.paragraph,
    accommodation: Faker::Lorem.paragraph,
    transport: Faker::Lorem.paragraph,
    additional_services: Faker::Lorem.paragraph
}

