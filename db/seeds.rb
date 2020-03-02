# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ruling.destroy_all
Option.destroy_all
Case.destroy_all
User.destroy_all

user1 = User.create(name: "Henry", title: "King", rating: 50)
user2 = User.create(name: "Henry II", title: "King", rating: 30)
user3 = User.create(name: "Henrietta", title: "Queen")
user4 = User.create(name: "Henry III", title: "King", rating: 90)

case1 = Case.create(title: "OJ vs The People", rating_boost: 50, disclosure: "He do it? Or cop lie?", creator_id: user4.id)
case2 = Case.create(title: "PJ's vs The People", rating_boost: 50, disclosure: "Do you really need clothes to sleep?", creator_id: user3.id)

option1a = Option.create(points: -99, description: "He do" , case_id: case1.id)
option1b = Option.create(points: -1, description: "F da police", case_id: case1.id)

option2a = Option.create(points: -50, description: "PJ's are cute", case_id: case2.id)
option2b = Option.create(points: -150, description: "PJ's are pretty useful", case_id: case2.id)
option2c = Option.create(points: 0, description: "Sleeping in undies ftw", case_id: case2.id)

ruling1 = Ruling.create(user_id: user1.id, case_id: case1.id, verdict: option1a.id)
ruling2 = Ruling.create(user_id: user1.id, case_id: case2.id, verdict: option2a.id)


