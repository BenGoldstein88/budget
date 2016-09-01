# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.delete_all
Budgeter.delete_all

# i1 = Item.new(name: "Test #1", description: 'Here we go, folks.', price_in_pennies: 1500)
# i2 = Item.new(name: "Test #2", description: 'Kablammy!', price_in_pennies: 3450)
# i3 = Item.new(name: 'Test #3', description: 'Ice Cream Comptroller', price_in_pennies: 1999)

# i1.save!
# i2.save!
# i3.save!

b = Budgeter.create

Item.create(name: 'Test Item 1', description: 'Well that was weird.', price_in_pennies: 1599, active: true, budgeter_id: b.id)
Item.create(name: 'Test Item 2', description: 'Well that was weirder.', price_in_pennies: 2599, budgeter_id: b.id)
Item.create(name: 'Test Item 3', description: 'Well that was weirdest.', price_in_pennies: 1999, budgeter_id: b.id)

