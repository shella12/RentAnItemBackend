# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
User.create(email:"zuhra@gmail.com",password:"123456")

# House 1
house = House.new(
  name: 'Pent house', price: 300000, 
  description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
          The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
          Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
          Plenty of Storage Space. It's important to have designated storage areas and large closets.", 
  owner_name: 'John Doe'
)
house.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images2.jpg')), 
filename: 'images2.jpg', content_type: 'image/jpg') 
house.save

# House 2
house = House.new(
  name: 'Bungalow', price: 525600, 
  description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
          The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
          Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
          Plenty of Storage Space. It's important to have designated storage areas and large closets.",
  owner_name: 'John Doe'
)
house.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images3.webp')), 
filename: 'images3.webp', content_type: 'image/webp')
house.save

# House 3
house = House.new(
  name: 'Cottage', price: 456000, 
  description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
          The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
          Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
          Plenty of Storage Space. It's important to have designated storage areas and large closets.",
  owner_name: 'John Doe'
)
house.picture.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'images4.webp')), 
filename: 'images4.webp', content_type: 'image/webp') 
house.save
