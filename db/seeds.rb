# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(email: 'admin@bacancy.com')
admin.password = 'admin123'
admin.password_confirmation = 'admin123'
admin.is_admin = true
admin.save


Country.create(name: 'India')
Country.create(name: 'USA')
Country.create(name: 'France')
Country.create(name: 'Spain')

State.create(name: 'Andhra Pradesh', country_id:1)
State.create(name: 'Gujarat', country_id:1)
State.create(name: 'Maharashtra', country_id:1)
State.create(name: 'Karnataka', country_id:1)
State.create(name: 'Washington', country_id:2)
State.create(name: 'California', country_id:2)
State.create(name: 'New Jersey', country_id:2)
State.create(name: 'France 1', country_id:3)
State.create(name: 'France 2', country_id:3)
State.create(name: 'Spain 1', country_id:4)
State.create(name: 'Spain 2', country_id:4)

City.create(name: 'Hyderabad', state_id:1)
City.create(name: 'Ahmedabad', state_id:2)
City.create(name: 'Mumbai', state_id:3)
City.create(name: 'Bangalore', state_id:4)
City.create(name: 'Seattle', state_id:5)
City.create(name: 'SFO', state_id:6)
City.create(name: 'NJ', state_id:7)
City.create(name: 'Paris', state_id:8)
City.create(name: 'French city 2', state_id:9)
City.create(name: 'Lisbon', state_id:1)
City.create(name: 'Lisbon2', state_id:1)
