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

    House.create!([{
        name: "Pent house",
        price: 300000,
        picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/5bb4ea2c-4ae5-45b8-9083-aeafbfbcf287", 
        description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
         The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
         Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
         Plenty of Storage Space. It's important to have designated storage areas and large closets.",
        owner_name: "susan perry"
      },
      {
        name: "Bungalow",
        price: 525600,
        picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/42f981e7-e0cd-4008-aa82-32a0f31cc2d3", 
        description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
         The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
         Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
         Plenty of Storage Space. It's important to have designated storage areas and large closets.",
        owner_name: "Charllie Brown"
      },
      {
        name: "Cottage",
        price: 990000,
        picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/ff6876b6-92ed-4f1a-804a-0f7ac491dcc6", 
        description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
         The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
         Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
         Plenty of Storage Space. It's important to have designated storage areas and large closets.",
        owner_name: "Martha Michells"
      },
      {
        name: "Contemporary architecture",
        price: 796000,
        picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/e222ceb8-9f5a-4f3d-b19a-1e458ac85047", 
        description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
         The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
         Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
         Plenty of Storage Space. It's important to have designated storage areas and large closets.",
        owner_name: "Martha Michells"
      },
      {
        name: "Cottage",
        price: 456000,
        picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/876a9a91-e006-463d-8820-a29bb48b2c20", 
        description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
         The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
         Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
         Plenty of Storage Space. It's important to have designated storage areas and large closets.",
        owner_name: "Robert Barnard"
      },
      {
        name: "Mansion",
        price: 870000,
        picture:"https://github.com/shella12/RentAnItemBackend/assets/44798044/decdfb78-4b10-496f-b929-1fc0b2ddc469", 
        description: "This house has 5 rooms upstairs and 4 rooms downstairs. Home design emphasizes clean lines and geometric shapes.
         The magic thing about this houe is that it feels good to leave, and it feels even better to come back.
         Modern Conveniences and Green Features. Well-Placed Bathrooms. Quality Construction with Distinct Architecture. 
         Plenty of Storage Space. It's important to have designated storage areas and large closets.",
        owner_name: "Kim buffey"
      }])
    
      p "Created #{House.count} Houses"
     