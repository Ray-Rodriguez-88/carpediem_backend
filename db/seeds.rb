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


code_challenge = Event.create(name:"code challenge", description:"test", priority: "high" time_start:10:00, time_end:11:00)
lunch = Event.create(name:"lunch", description:"test", priority: "medium" time_start:12:00, time_end:13:00)

initial_date = CalendarDate.create(date:Time.now)
someTime= CalendarDate.create(date:2018-09-12 11:32:35)

event_one = EventDate.create(event:code_challenge, calendar_date:someTime)
event_two = EventDate.create(event:lunch, calendar_date:initial_date)

UserCalendar.create(user:ray, event_date:event_two)
UserCalendar.create(user:rick, calendar_date:someTime)



