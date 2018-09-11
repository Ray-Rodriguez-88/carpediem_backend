# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
EventDate.destroy_all
CalendarDate.destroy_all
Event.destroy_all
User.destroy_all

ray = User.create(name:"Ray", username:"RFTD", email:"ray@carpediem.com")
rick = User.create(name:"Rick". username:"RGarza7",
email:"rick@carpediem.com")


code_challenge = Event.create(name:"code challenge", description:"test", priority: "high")
