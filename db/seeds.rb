# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Ronald', last_name: 'Reagan', username: 'ronald', password: 'reagan')
user2 = User.create(first_name: 'Mike', last_name: 'Newman', username: 'mike', password: 'newman')
user3 = User.create(first_name: 'Andrew', last_name: 'Black', username: 'andrew', password: 'black')
user4 = User.create(first_name: 'Albert', last_name: 'Hadiprodjo', username: 'albert', password: 'hadiprodjo')
user5 = User.create(first_name: 'Ryan', last_name: 'Murray', username: 'ryan', password: 'murray')


Activity.create(user_id: user1.id, name: 'Running', date: Date.parse('2021-07-16'), duration: 35, distance: 21120)
Activity.create(user_id: user1.id, name: 'Sledding', date: Date.parse('2021-07-17'), duration: 20, distance: 1320)
Activity.create(user_id: user1.id, name: 'Dancing', date: Date.parse('2021-07-19'), duration: 90, distance: 0)
Activity.create(user_id: user1.id, name: 'Walking', date: Date.parse('2021-07-18'), duration: 60, distance: 15840)
Activity.create(user_id: user1.id, name: 'Biking', date: Date.parse('2021-07-23'), duration: 20, distance: 23760)
Activity.create(user_id: user1.id, name: 'Weight Lifting', date: Date.parse('2021-07-22'), duration: 22, distance: 0)
Activity.create(user_id: user1.id, name: 'Biking', date: Date.parse('2021-07-25'), duration: 40, distance: 52800)
Activity.create(user_id: user1.id, name: 'Walking', date: Date.parse('2021-07-29'), duration: 80, distance: 10000)
Activity.create(user_id: user1.id, name: 'Swimming', date: Date.parse('2021-07-31'), duration: 80, distance: 0)