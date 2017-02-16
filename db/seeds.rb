User.create!(user_name: "Admin account", email: "admin@gmail.com",
  password: "admin123", role: 2, password_confirmation: "admin123", 
  address: "123 Nguyen Luong Bang", phone_number: "098732232")
User.create!(user_name: "ShopOwner account", email: "admin1@gmail.com",
  password: "admin123", role: 1, password_confirmation: "admin123",
  address: "12 Bach Dang", phone_number: "01233291821")
User.create!(user_name: "User account", email: "user@gmail.com",
  password: "user123", role: 0, password_confirmation: "user123",
  address: "123 Ngo Thi Nham", phone_number: "0987138191")

30.times do |n|
  name  = Faker::Name.name
  email = "user-#{n+1}@gmail.com"
  address = "#{n+1} Le Duan"
  phone_number = "0988777666"
  password = "user123"
  User.create!(user_name: name, email: email, password: password, 
  	address: address, password_confirmation: password, phone_number: phone_number )
end

Category.create!(name: "Coffee")
Category.create!(name: "Tea")
Category.create!(name: "Soda")
Category.create!(name: "Cocktail")

30.times do |n|
  name  = "Product #{n+1}"
  price = rand 10..200
  category_id = rand 1..4
  description = Faker::Lorem.sentence 20
  Product.create!(name: name, price: price, category_id: category_id, 
    description: description)
end

30.times do |n|
  name  = "Suggest product #{n+1}"
  user_id = rand 3..10
  description = Faker::Lorem.sentence 20
  Suggestion.create!(name: name, user_id: user_id, description: description)
end
