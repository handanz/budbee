# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

User.destroy_all
Group.destroy_all
Meeting.destroy_all

p "Destroying Users, Groups, and Meetings.."

puts "Creating users"

users = User.create! [
  { email: "hello@text.co",
    password: "morning"
  },
  { email: "honey@text.co",
    password: "1234567"
  },
  { email: "bob@gmail.com",
    password: "helloo"
  },
  { email: "rose@text.co",
    password: "abcdefg"
  },
]

puts "Creating groups"

groups = Group.create! [
  { name: "Psychology UiO",
    description: "Social Psychology class students from UiO. We study together for the exams, usually at the library.",
    city: "Oslo",
    limitation: "5",
    image: "https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Social Psychology with nerds",
    description: "Wanna join our nerdy group? Send us the nerdies message you can ever think of!",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1556566229-5e8a0a2f048d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Conq",
    description: "We are a group of chemistry students. We aim at conquering the world by using the knowledge you learn outside of school. We do different experiments and have fun by screwing up. LOL",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1562411052-105105232432?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80"
  },
  { name: "Kitten by the sea",
    description: "Marine biology kids with special interests in kittens. We like to go around the ocean looking for kittens and talk about creatures living in the sea.",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1495012379376-194a416fcc5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=367&q=80"
  },
    { name: "Linda from the other side",
    description: "Film is passion, film is life. Let's film something dope! ps. we usually meet at night since we cant get up during the day.",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1532800783378-1bed60adaf58?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Sunday Physics",
    description: "We are a group of serious physics scholars living in Oslo. We have fun on Sundays by gathering around the dinner table eating pizza and discuss about theories that haven't been proved yet.",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1453733190371-0a9bedd82893?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80"
  },
  { name: "Social Psychology with hot chocolate",
    description: "A bunch of cool kids who is really into the cultural aspect of social psychology. We usually experiment different hot chocolates during our meet ups.",
    city: "Bergen",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1538993742171-0de4a25d1a3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  },
  { name: "Russian literature",
    description: "It started out by Line and Jonas having literature talk on Wednesdays. Now we are three people who meet regularly and discuss about different literature.",
    city: "Bergen",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1504615458222-979e04d69a27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=755&q=80"
  },
    { name: "Pyche!",
    description: "Pyche! We talk about topics around psychologies. And all the myth.",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1564106273115-63725b0918ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  },
  { name: "Political movement for all",
    description: "We are a group of students from OsloMet studying political sciences. On Sundays, we'd like to take a walk in the parks and discuss topics around today's hot political topics. Join us if you'd like to share your opinions together with us!",
    city: "Oslo",
    limitation: "3",
    image: "https://images.unsplash.com/photo-1485282826741-1b5d56f7e268?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Ocean, books, and cakes",
    description: "We love literature, cakes, and ocean. You know what to expect on the meet ups ;)",
    city: "Oslo",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1512223792601-592a9809eed4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
  },
  { name: "Wine and dining",
    description: "We are some wine lovers. Wine and dining is life.",
    city: "Bergen",
    limitation: "4",
    image: "https://images.unsplash.com/photo-1553361371-9b22f78e8b1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  },
]

puts "Creating meetings"

meetings = Meeting.create! [
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
