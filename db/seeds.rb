# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Color.create(hex_code: '#000000', name: 'Black')
Model.create(name:"Rıza", waist: 92, shoulder: 92, chest: 92, length: 92, hip: 92)
ProductType.create(name: 'Shirt')
ProductUrl.create(body: 'https://www.google.com')
Color.create(hex_code: '#ff0000', name: 'Red')
