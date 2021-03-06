# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user2 = User.create(
  uid: 'uid',
  provider: 'provider',
  access_token: 'accesstoken',
  refresh_token: "2151234567",
  timezone: 'timezone',
  expires_at: 'expires',
  full_name: 'fullname'
)

user2 = User.create(
  uid: 'uid2',
  provider: 'provider2',
  access_token: 'accesstoken2',
  refresh_token: "21512345672",
  timezone: 'timezone2',
  expires_at: 'expires2',
  full_name: 'fullname2'
)
user3 = User.create(
  uid: 'uid3',
  provider: 'provider3',
  access_token: 'accesstoken3',
  refresh_token: "215123456723",
  timezone: 'timezone3',
  expires_at: 'expires3',
  full_name: 'fullname3'
)

todo1 = Todo.create(
uuid: '12345',
user_id: 1,
text: 'goals',
completed: false
)

todo2 = Todo.create(
uuid: '12346',
user_id: 2,
text: 'goals',
completed: false
)

todo3 = Todo.create(
uuid: '12347',
user_id: 3,
text: 'goals',
completed: false
)
