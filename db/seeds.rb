Item.destroy_all

number = (1..30).to_a
street = %w(Friedrichstraße Warschauer Straße Prenzlauer Allee Oranienburger Straße Mehringdamm Leipziger Straße Sonnenallee Ackerstraße Ebertstraße Karl-Liebknecht-Straße Rosa-Luxemburg-Straße Frankfurter Allee)
category = %w(Electronics Home & Garden Outdoors)

20.times do
  item = Item.new(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    category: "#{category.sample}",
    address: "#{number.sample} #{street.sample}, Berlin, Germany"
  )
  item.save!
  item.photo_urls = ['https://source.unsplash.com/collection/1420950/1600x900', 'https://source.unsplash.com/collection/1420950/1600x900']
end

Transaction.create(
  meetup_location: "berlin",
  status: 1,
  item: Item.last
  )


# user = User.new(
#   first_name: Faker::Name.first_name,
#   last_name: Faker::Name.last_name,
#   address: "#{number.sample} #{street.sample}",
#   city: "Berlin",
#   email: Faker::Internet.email,
#   )
