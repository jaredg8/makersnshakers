# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# urls = [
#   'http://img.clubic.com/08254724-photo-xbox-console.jpg',
#   'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
# ]

item = Item.new(name: 'Xbox')
item.save!
# item.photo_urls = urls

# urls = [
#   'http://img.clubic.com/08254724-photo-xbox-console.jpg',
#   'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
# ]

item = Item.new(name: 'Playstation')
item.save!
# item.photo_urls = urls

# urls = [
#   'http://img.clubic.com/08254724-photo-xbox-console.jpg',
#   'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
# ]

item = Item.new(name: 'Nintendo')
item.save!
# item.photo_urls = urls
