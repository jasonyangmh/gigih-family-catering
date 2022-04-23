# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create(name: "Indonesian cuisine")
Category.create(name: "Chinese cuisine")
Category.create(name: "Indian cuisine")

Food.create(name: "Fried Rice", price: 25000.0, description: "Just a fried rice.")
Food.create(name: "Dumpling", price: 25000.0, description: "Just a dumpling.")
Food.create(name: "Biryani", price: 25000.0, description: "Just a biryani.")

FoodCategory.create(food_id: 1, category_id: 1)
FoodCategory.create(food_id: 2, category_id: 2)
FoodCategory.create(food_id: 3, category_id: 3)
