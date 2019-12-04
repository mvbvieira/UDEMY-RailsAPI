namespace :dev do
  desc "configura o ambiente de desenvolvimento"
  task setup: :environment do
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.forward(20)
      )
    end
  end
end
