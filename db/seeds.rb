# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create!([
    {
      name: "Sottocasa NYC",
      address: "298 Atlantic Ave, Brooklyn, NY 11201"
    },
    {
      name: "PizzArte",
      address: "69 W 55th St, New York, NY 10019"
    },
    {
      name: "San Matteo NYC",
      address: "1559 2nd Ave, New York, NY 10028"
    }
  ])

  Pizza.create!([
 
  {
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
  },
  {
    name: "Veggie",
    ingredients: "Dough, Sauce, Cheese, Red Peppers, Green Peppers, Onions, Mushrooms"
  }
])
  