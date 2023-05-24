# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
User.create(email:"zuhra@gmail.com",password:"123456")

House.destroy_all

# House.create!([{
#     name: "Pent house",
#     price: 300000,
#     picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/5bb4ea2c-4ae5-45b8-9083-aeafbfbcf287", 
#     description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
#       The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
#       Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
#       Plenty of Storage Space. It's important to have designated storage areas and large closets.",
#     owner_name: "susan perry"
#   },
#   {
#     name: "Bungalow",
#     price: 525600,
#     picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/42f981e7-e0cd-4008-aa82-32a0f31cc2d3", 
#     description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
#       The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
#       Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
#       Plenty of Storage Space. It's important to have designated storage areas and large closets.",
#     owner_name: "Charllie Brown"
#   },
#   {
#     name: "Cottage",
#     price: 990000,
#     picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/c88d6061-e4c9-40ed-8977-64941a8ce82b", 
#     description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
#       The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
#       Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
#       Plenty of Storage Space. It's important to have designated storage areas and large closets.",
#     owner_name: "Martha Michells"
#   },
#   {
#     name: "Contemporary architecture",
#     price: 796000,
#     picture:"https://github.com/shella12/RentAnItemApp/assets/44798044/8f6b203f-5627-4605-b660-336e01bddf89", 
#     description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
#       The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
#       Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
#       Plenty of Storage Space. It's important to have designated storage areas and large closets.",
#     owner_name: "Martha Michells"
#   },
#   {
#     name: "Cottage",
#     price: 456000,
#     picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/46fda450-8a02-4ee6-9017-f54284fb54ae", 
#     description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
#       The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
#       Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
#       Plenty of Storage Space. It's important to have designated storage areas and large closets.",
#     owner_name: "Robert Barnard"
#   },
#   {
#     name: "Mansion",
#     price: 870000,
#     picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/ac143109-1ae3-4885-a650-808b3bdb6cda", 
#     description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
#       The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
#       Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
#       Plenty of Storage Space. It's important to have designated storage areas and large closets.",
#     owner_name: "Kim buffey"
#   }])

#   p "Created #{House.count} Houses"

# test_user = User.create(email: 'test@gmail.com', password: '123456')
# FavoriteHouse.create(user_id: test_user.id , house_id: House.first.id)
# FavoriteHouse.create(user_id: test_user.id , house_id: House.third.id)
     