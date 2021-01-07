# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fairfield= Location.create(city:"Fairfield",state:"California")

chevys =Restaurant.create(name:"Chevys", description:"Mexican restaurant", image_url:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eatdrinkdeals.com%2Fchevys-coupons%2F&psig=AOvVaw0A7-hB8b9lKRDf_cXF_dPn&ust=1610045604764000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCND8r7f9h-4CFQAAAAAdAAAAABAD", location_id: fairfield.id)