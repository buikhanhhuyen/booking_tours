# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! username: "admin", email: "admin@email.com",
  password: "123456", password_confirmation: "123456", is_admin: true
User.create! username: "user", email: "user@email.com",
  password: "123456", password_confirmation: "123456", is_admin: false

Category.create! title: "Du lich trong nuoc", description: "day la description rat la dai"
Category.create! title: "Du lich ngoai nuoc", description: "day la description rat la dai"
Category.create! title: "Du lich sinh thai", description: "day la description rat la dai"

Place.create! name: "Da Lat", description: "Dia danh noi tieng nhat Da Lat"
Place.create! name: "Ha Noi", description: "Dia danh noi tieng nhat Ha Noi"
Place.create! name: "TP HCM", description: "Dia danh noi tieng nhat Ho Chi Minh"
Place.create! name: "Thai Lan", description: "bla bla bla"
Place.create! name: "Da Nang", description: "bla bla bla"
