# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create(name:"Olde English 40oz", morality: -20)
Item.create(name:"A Fat Sack of Cocaine", morality: -40)
Item.create(name:"Cigarette", morality: -5)
Item.create(name:"Heroin", morality: -50)
Item.create(name:"4Loko", morality: -25)
Item.create(name:"Jazz Cigarette", morality: 0)
Item.create(name:"Red Wine", morality: -10)
Item.create(name:"Speed", morality: -15)
Item.create(name:"Acid", morality: -20)
Item.create(name:"MDMA", morality: -15)
Item.create(name:"Big Mac", morality: -10)
Item.create(name:"Baconator", morality: -15)
Item.create(name:"5th of Jack Daniels", morality: -15)
Item.create(name:"Dabs", morality: -5)
Item.create(name:"Gun", morality: -20)

Action.create(name:"Murder", morality: -100)
Action.create(name:"Prostitution", morality: -20)
Action.create(name:"Fight", morality: -20)
Action.create(name:"Sell Drugs", morality: -30)
Action.create(name:"Lie", morality: -10)
Action.create(name:"Cheat", morality: -20)
Action.create(name:"Steal", morality: -20)
Action.create(name:"Visit Golden Corral", morality: -10)
Action.create(name:"Visit Joe's Cellar", morality: -15)
Action.create(name:"Do Drugs", morality: -40)
Action.create(name:"Gamble", morality: -15)
Action.create(name:"Russian Roulette", morality: rand(100) * -1)
Action.create(name:"Wrestle A Bum", morality: -10)
Action.create(name:"Vote For Donald Trump", morality: -20)
Action.create(name:"Donate Plasma", morality: -10)
Action.create(name:"Sleep", morality: 50)

User.create(name: 'admin', email: 'admin@mail.com', password: 'password', admin: true)
