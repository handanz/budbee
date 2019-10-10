# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'

UserGroup.destroy_all
UserMeeting.destroy_all
User.destroy_all
Meeting.destroy_all
Group.destroy_all

p "Destroying Users, Groups, and Meetings.."

puts "Creating users"

#line_photo = File.read('app/assets/images/linelong.png')


users = User.create! [
  { email: Faker::Internet.email,
    password: "morning",
    username: "line23",
    first_name: "Line",
    last_name: "Pederson",
    image: "line.png",
    tag_list: "UiO, psychology, paiting, python, cooking, social psychology"
  },
  { email: Faker::Internet.email,
    password: "1234567",
    username: "js2019",
    first_name: "Jonas",
    last_name: "Boet",
    tag_list: "social psychology, football, accounting"
  },
  { email: Faker::Internet.email,
    password: "helloo",
    username: "helenenls",
    first_name: "Helene",
    last_name: "Nielson",
    tag_list: "film, writing, literature"
  },
  { email: Faker::Internet.email,
    password: "abcdefg",
    username: "rosa19",
    first_name: "Rosa",
    last_name: "Falch",
    tag_list: "architecture, art, painting"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: "rosa29",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, art, psychology"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: "andersk",
    first_name: "Anders",
    last_name: "Kvale",
    tag_list: "behaviour economics, psychology"
  },

  ############ autogen names using Faker for the next users

  { email: Faker::Internet.email,
    password: "morning",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "UiO, psychology, paiting, python, cooking, social psychology"
  },
  { email: Faker::Internet.email,
    password: "1234567",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "social psychology, football, accounting"
  },
  { email: Faker::Internet.email,
    password: "helloo",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "film, writing, literature"
  },
  { email: Faker::Internet.email,
    password: "abcdefg",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "architecture, art, painting"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, art, psychology"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, psychology"
  },
  { email: Faker::Internet.email,
    password: "morning",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "UiO, psychology, paiting, python, cooking, social psychology"
  },
  { email: Faker::Internet.email,
    password: "1234567",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "social psychology, football, accounting"
  },
  { email: Faker::Internet.email,
    password: "helloo",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "film, writing, literature"
  },
  { email: Faker::Internet.email,
    password: "abcdefg",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "architecture, art, painting"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, art, psychology"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, psychology"
  },
  { email: Faker::Internet.email,
    password: "morning",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "UiO, psychology, paiting, python, cooking, social psychology"
  },
  { email: Faker::Internet.email,
    password: "1234567",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "social psychology, football, accounting"
  },
  { email: Faker::Internet.email,
    password: "helloo",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "film, writing, literature"
  },
  { email: Faker::Internet.email,
    password: "abcdefg",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "architecture, art, painting"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, art, psychology"
  },
  { email: Faker::Internet.email,
    password: "abcdefgp",
    username: Faker::Internet.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    tag_list: "behaviour economics, psychology"
  },

]

puts "creating articles"

article = Article.new
article.title = "Culture in my eyes"
article.content = "In the house at the top of Iwata-yama, people were feeding monkeys and resting. There were a woman with three girls sitting in front of me, two of the children were holding ice cream in their hands. I was wondering why only two of them got ice cream, then one girl surprised me by offering the ice cream to her mom. Japanese people do not usually share food with other people, not like in other Asian countries.
\n
Those three girls were about six years old, they shared ice cream with their mom and friends. But it’s hard to find teenagers do this, something must changed during the days when they entered middle school. Being the same is most emphasized in middle school, in Japan’s case. School uniform is forced to wear, and also bag and shoes, which is different from elementary school where those were not fixed. Japan’s education system strongly supported the society to be a closed culture. People in one society acted upon ‘shared system of beliefs and values’ - ‘collective conscience’. (Emile Durkheim, The Division of Labour in Society) This is perfectly performed in Japan’s society. Ice cream sharing showed one thing is that Japanese people is just the same as other countries’. However, the act of sharing food in some extend is the act of showing affection. Japanese people are told to hold their feelings, such actions are considered as silly things. When one child quitted on doing, all the others also stopped, therefore sharing food is no longer can be seen in grown-ups.
\n
Why Japanese people tend to conceal their feelings? Marx thinks that human societies are embedded in their own pasts - historical materialism. Bushi-do (the code of the samurai) is considered as a great matter in Japan since a long time ago, the main idea was from China’s Confucianism. Bushi-do told samurai to pay respect and be loyal, but nobody told them how to show their emotions into forms. Meanings were not used to express into words but to be understood without speaking out. Natsume Soseki once asked his students to translate “愛してる” into English. Students said “I love you”, but that’s worry, he said. “The moon is beautiful”, and she can understand. This is no longer be the same in today’s society, but Japanese people still won’t say “I love you” to their family. The reason is not they don’t, but they understand each other. When coming to the food sharing, other Asian people doing it because sit in front of the same table and share food can joint them into a close group. On the other hand Japanese people think that love can be transferred in the atmosphere, such acts are not necessary.
\n
Ice cream sharing is an act of expressing one’s love to another, however this doesn’t meet the custom of the old history. Therefore, when the young girls grew up, they will follow the other, as the most people do, give up on the food sharing. Even they quit to express their feelings, I’m sure they still love the people they love."
article.user = User.first
article.tag_list = "social psychology, culture, japan, eating, tradition"
article.save




puts "Creating groups"

groups = Group.create! [
  { name: "Psychology UiO",
    description: "Social Psychology class students from UiO. We study together for the exams, usually at the library.",
    city: "Oslo",
    limitation: "5",

    image: "https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    tag_list: "UiO, psychology, master student"
  },
  { name: "Social Psychology with nerds",
    description: "Wanna join our nerdy group? Send us the nerdies message you can ever think of!",
    city: "Oslo",
    limitation: "4",
    tag_list: "social psychology, nerd, UiO",
    image: "https://images.unsplash.com/photo-1556566229-5e8a0a2f048d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Conq",
    description: "We are a group of chemistry students. We aim at conquering the world by using the knowledge you learn outside of school. We do different experiments and have fun by screwing up. LOL",
    city: "Oslo",
    limitation: "4",
    tag_list: "chemistry, OsloMet, Oslo",
    image: "https://images.unsplash.com/photo-1562411052-105105232432?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80"
  },
  { name: "Kitten by the sea",
    description: "Marine biology kids with special interests in kittens. We like to go around the ocean looking for kittens and talk about creatures living in the sea.",
    city: "Oslo",
    limitation: "4",
    tag_list: "kitten, marine biology, UiO",
    image: "https://images.unsplash.com/photo-1495012379376-194a416fcc5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=367&q=80"
  },
  { name: "Linda from the other side",
    description: "Film is passion, film is life. Let's film something dope! ps. we usually meet at night since we cant get up during the day.",
    city: "Oslo",
    limitation: "4",
    tag_list: "film, art, light",
    image: "https://images.unsplash.com/photo-1532800783378-1bed60adaf58?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Sunday Physics",
    description: "We are a group of serious physics scholars living in Oslo. We have fun on Sundays by gathering around the dinner table eating pizza and discuss about theories that haven't been proved yet.",
    city: "Oslo",
    limitation: "4",
    tag_list: "physics, parks, uio",
    image: "https://images.unsplash.com/photo-1453733190371-0a9bedd82893?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80"
  },
  { name: "Social Psychology with hot chocolate",
    description: "A bunch of cool kids who is really into the cultural aspect of social psychology. We usually experiment different hot chocolates during our meet ups.",
    city: "Oslo",
    limitation: "4",
    tag_list: "social psychology, hot chocolate, culture",
    image: "https://images.unsplash.com/photo-1538993742171-0de4a25d1a3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  },
  { name: "Russian literature",
    description: "It started out by Line and Jonas having literature talk on Wednesdays. Now we are three people who meet regularly and discuss about different literature.",
    city: "Bergen",
    limitation: "4",
    tag_list: "literature, russia, reading",
    image: "https://images.unsplash.com/photo-1504615458222-979e04d69a27?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=755&q=80"
  },
  { name: "Pyche!",
    description: "Pyche! We talk about topics around psychologies. And all the myth.",
    city: "Oslo",
    limitation: "4",
    tag_list: "UiO, psychology, discussion",
    image: "https://images.unsplash.com/photo-1564106273115-63725b0918ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  },
  { name: "Political movement for all",
    description: "We are a group of students from OsloMet studying political sciences. On Sundays, we'd like to take a walk in the parks and discuss topics around today's hot political topics. Join us if you'd like to share your opinions together with us!",
    city: "Oslo",
    limitation: "3",
    tag_list: "political sciences, UiO, political movement",
    image: "https://images.unsplash.com/photo-1485282826741-1b5d56f7e268?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  },
  { name: "Ocean, books, and cakes",
    description: "We love literature, cakes, and ocean. You know what to expect on the meet ups ;)",
    city: "Oslo",
    limitation: "4",
    tag_list: "literature, ocean, cakes",
    image: "https://images.unsplash.com/photo-1512223792601-592a9809eed4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
  },
  { name: "Wine and dining",
    description: "We are some wine lovers. Wine and dining is life.",
    city: "Bergen",
    limitation: "4",
    tag_list: "wine, dining, food",
    image: "https://images.unsplash.com/photo-1553361371-9b22f78e8b1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  },
]



puts "Creating UserGroups"
# each group:
#  amt of users - rand <= group limitation
#  find random users not already in group
#  add to group

# count how many groups Line is in
line_group_count = 0

# Add specific users to specific groups
user_indexes_for_groups = {
  0 => [0, 13, 20],
  6 => [0, -1, -2]
}

[0, 6].each do |group_index|
  user_indexes_for_group = user_indexes_for_groups[group_index]
  user_indexes_for_group.each do |user_index|
    user_group = UserGroup.new
    user_group.user = User.all[user_index]
    user_group.group = Group.all[group_index]
    user_group.save!
    line_group_count += 1 if user_index == 0 # Line
  end
end

Group.all.each do |group|
  next if group.users.count.positive?
  # binding.pry
  to_add_count = rand(1...group.limitation)
  to_add_count.times do
    existing_member_ids = group.users.map { |user| user.id }
    existing_member_ids << User.first.id if line_group_count > 1
    user = User.where.not(id: existing_member_ids).sample
    line_group_count += 1 if user.id == User.first.id

    user_group = UserGroup.new
    user_group.user = user
    user_group.group = group
    user_group.save!
    group.reload
  end
end



# user_group1 = UserGroup.new(confirmed: true, user_id: User.first.id, group_id: Group.first.id)
# user_group1.save
# user_group2 = UserGroup.new(confirmed: true, user_id: User.first.id, group_id: Group.all[6].id)
# user_group2.save

puts "Creating meetings"


meeting1 = Meeting.new
meeting1.title = "UiO psychology Monday meetup"
meeting1.description = "This meeting is for students who wants to know more about this group. We are meeting on Monday to discuss about what we are aiming at for this semester. ps. We are some ambitious students, and wish for a good grade for this semester."
meeting1.time = "2019-10-14 17:00:00"
meeting1.address = "chr.krohgs gate 1, Oslo"
meeting1.group = Group.all[6]
meeting1.save


meeting2 = Meeting.new
meeting2.title = "Meetup for study groups"
meeting2.description = "This meeting is for people who wnats to share their interests and to know more about others"
meeting2.time = "2019-10-28 17:00:00"
meeting2.address = "chr.krohgs gate 1, Oslo"
meeting2.group = Group.all[6]
meeting2.save

user_meeting = UserMeeting.new
user_meeting.user = User.first
user_meeting.meeting = Meeting.first
user_meeting.save

user_meeting1 = UserMeeting.new
user_meeting1.user = User.all[1]
user_meeting1.meeting = Meeting.first
user_meeting1.save

user_meeting_a = UserMeeting.new
user_meeting_a.user = User.first
user_meeting_a.meeting = Meeting.all[6]
user_meeting_a.save

user_meeting_b = UserMeeting.new
user_meeting_b.user = User.all[4]
user_meeting_b.meeting = Meeting.all[6]
user_meeting_b.save



p "Users and Meetings created"
