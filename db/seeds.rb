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
  item.photo_urls = ['https://placeimg.com/640/480/tech', 'https://placeimg.com/640/480/tech']
end
