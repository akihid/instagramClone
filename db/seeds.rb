50.times do |n|
  name = Faker::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  content = Faker::Lorem.sentence
  gender = Faker::Boolean.boolean
  age = Faker::Number.number(2)
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               content: content,
               gender: gender,
               age: age,
               )
end
