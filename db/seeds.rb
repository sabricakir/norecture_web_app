# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Color.create(name: "Green", hex_code: "#00FF00")
Model.create(name: "Model 1", waist: 30, shoulder: 30, chest: 30, length: 30, hip: 30)
ProductType.create(name: "Product Type 1")
ProductUrl.create(body: "https://www.google.com", image_url: "https://www.google.com", product_id: 1)
