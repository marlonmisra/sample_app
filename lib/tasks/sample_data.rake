namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_user
  end
end

def make_user
  admin = User.create!(name:     "Marlon Misra",
                       email:    "marlon@marlonmisra.com",
                       password: "marlon1",
                       password_confirmation: "marlon1")
  admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end
