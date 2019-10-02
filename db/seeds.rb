# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

User.destroy_all
Meeting.destroy_all

p "Destroying Users and Meetings.."

User.create! [
  {
    email: "hello@text.co",
    password: "morning"
  },
  {
    email: "honey@text.co",
    password: "1234567"
  },
  { email: "bob@gmail.com",
    password: "helloo"
  },
  {
    email: "rose@text.co",
    password: "abcdefg"
  },
]

Meeting.create! [
  {
    title: "Meetup for students",
    description: "This meeting is for students who wnats to know more about this group",
    time: "14/10/2019 17:00",
    address: "chr.krohgs gate 1, Oslo",
    group_id: "1"
  },
  {
    title: "Meetup for information sharing",
    description: "This meeting is for students who wnats to know more about the courses in university",
    time: "24/10/2019 18:00",
    address: "chr.krohgs gate 1, Oslo",
    group_id: "2"
  },
  {
    title: "Meetup for course",
    description: "This meeting is for students who wnats to know more about this Phsychology course",
    time: "06/11/2019 18:00",
    address: "chr.krohgs gate 1, Oslo",
    group_id: "7"
  },
  {
    title: "Meetup for Interests",
    description: "This meeting is for people who wnats to share their interests and to know more about others",
    time: "21/11/2019 17:00",
    address: "chr.krohgs gate 1, Oslo",
    group_id: "9"
  },
  {
    title: "Meetup for study groups",
    description: "This meeting is for students who wnats to find friends for study",
    time: "02/12/2019 17:00",
    address: "chr.krohgs gate 1, Oslo",
    group_id: "11"
  }
]

p "Users and Meetings created"
