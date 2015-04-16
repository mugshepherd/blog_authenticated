# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Entry.create([
  {title: "Go to store", detail: "Buy smoops, milk, yogurt, etc.  Don't forget ketchup."},
  {title: "Finish homework", detail: "Blog entries need work!"},
  {title: "Buy birthday present for Dad", detail: "Steel calculator watch?"}
  ])
Comment.create([
  {detail: "That's great!  Smoops have been my favorite thing to eat since my great-grandmother introduced me to them back in....", entry_id: 1},
  {detail: "I've always enjoyed blogging myself.  You'll like this", entry_id: 2},
  {detail: "Go Armani - top of the line.", entry_id: 3},
  {detail: "Puffed rice is way better", entry_id: 1},
  {detail: "Blog blog blog.  We've heard it all before", entry_id: 2},
  {detail: "Plastic - totally plastic.  The raised buttons are so much better.", entry_id: 3},
  {detail: "No way!  I love them too!", entry_id: 1},
  {detail: "What do you mean you haven't finished your homework yet??  And don't forget to call your parents!", entry_id: 2},
  {detail: "I think he could actually use a cat.", entry_id: 3}
  ])
User.create([
  {name: "Toby"},
  {name: "Peggy"},
  {name: "Mary"},
  {name: "Chot"}
  ])
