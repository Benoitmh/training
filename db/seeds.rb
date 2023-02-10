# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destruction des seeds'
User.destroy_all

puts 'Creation owners...'
owner1 = Owner.create!(first_name: 'Couturière', last_name: 'Française')
puts '...finished !'

puts 'Creation products...'
product1 = Product.create!(owner: owner1, price: '29,50 €', name: 'Sac', description: 'Très beau sac gris, utile pour se balader ou faire ses courses' )
product2 = Product.create!(owner: owner1, price: '2,80 €', name: 'Trousse', description: 'Pratique pour ranger vos accessoires de beauté avec classe !' )
product3 = Product.create!(owner: owner1, price: '4,10 €', name: 'Tour de cou', description: "Vous ne risquez pas d'attraper froid avec ce tour de cou ben chaud !")
puts '...finished !'
