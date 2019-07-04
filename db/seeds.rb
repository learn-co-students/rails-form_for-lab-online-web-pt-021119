# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student1 = Student.create(first_name: "Cillian", last_name: "Wing")
student2 = Student.create(first_name: "Stevie Ray", last_name: "Vaughan")
school_class1 = SchoolClass.create(title: "Computer Science", room_number: 501)
