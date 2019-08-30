# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.destroy_all
Student.destroy_all

# byebug

puts "Starting Seed: Schools"

fi = School.create!(name: "Flatiron School", address:"11 Broadway")
nyu = School.create!(name: "NYU", address:"New York, NY 10003")
jj = School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
cc = School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
cu = School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")

puts "Starting Seed: Students"


Student.create!(name: "Jon Snow", age: 11, school_id: fi.id)
puts "checkpoint"
Student.create!(name: "Jimmy Nuetron", age: 12, school_id: fi.id)
Student.create!(name: "Danny Phantom", age: 13, school_id: nyu.id)
Student.create!(name: "Hank", age: 14, school_id: nyu.id)
Student.create!(name: "Spongebob", age: 14, school_id: jj.id)
Student.create!(name: "Patrick", age: 16, school_id: jj.id)
Student.create!(name: "King Arthur", age: 15, school_id: cc.id)
Student.create!(name: "Merlin", age: 17, school_id: cc.id)
Student.create!(name: "Naruto", age: 19, school_id: cu.id)
Student.create!(name: "Monopoly Man", age: 18, school_id: cu.id)

puts "Finished Seeding"