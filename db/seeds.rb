Item.destroy_all

number = (1..30).to_a.sample
street = %w(Friedrichstraße Warschauer Straße Prenzlauer Allee Oranienburger Straße Mehringdamm Leipziger Straße Sonnenallee Ackerstraße Ebertstraße Karl-Liebknecht-Straße Rosa-Luxemburg-Straße Frankfurter Allee).sample
category = %w(Electronics Home & Garden Outdoors).sample

20.times do
  item = Item.new(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    category: "#{category}",
    address: "#{number} #{street}, Berlin, Germany"
  )
  item.save!
  item.photo_urls = ['https://placeimg.com/640/480/tech', 'https://placeimg.com/640/480/tech']
end


# urls = [
#   'http://img.clubic.com/08254724-photo-xbox-console.jpg',
#   'http://compass.xbox.com/assets/a5/d3/a5d3e0e4-38fd-42ab-90f4-e7b5112af4d1.png'
# ]

# item = Item.new(name: 'Xbox')
# item.save!
# item.photo_urls = urls

