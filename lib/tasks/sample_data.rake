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
end
