# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new
user.username = "Max"
user.password = '1111'
user.save!
# User.find_or_create_by(username: 'Max', password: '1111')
# User.find_or_create_by(username: 'Maax', password: '1111')
