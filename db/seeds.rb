# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Association.create!(
  name: 'Tete de limule',
  website: 'https://www.graine-nouvelle-aquitaine.fr/150-les-acteurs/272-tete-de-limule.html',
  logo_address: 'https://www.graine-nouvelle-aquitaine.fr/fileadmin/user_upload/Tete_de_Limule.png'
)

# Seed data for Funder model

Funder.create!(
  name: 'Diazocopy',
  website: 'https://www.facebook.com/Diazocopy/',
  logo_address: 'https://scontent-cdg4-1.xx.fbcdn.net/v/t39.30808-6/411246171_838338524967353_1757896165137713378_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=tSIBx5m6K5UAX8d3hKR&_nc_ht=scontent-cdg4-1.xx&oh=00_AfAB-gHfifW2c1SNIP8H_oSjIN_YSyGG00v6YjtaHUdO8A&oe=65FEAFFE'
)
puts 'Seeding done.'