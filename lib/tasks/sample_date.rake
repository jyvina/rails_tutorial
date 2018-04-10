namespace :db do
    desc "Fill databese with sample date"
    task populate: :environment do
        User.create!(name: "Example User",
                     email: "example@railstutorial.org",
                     password: "foober",
                     admin: true)
        99.times do |n|
            name = Faker::Name.name
            email = "example-#{n+1}@railstutorial.org"
            password = "password"
            User.create!(name: name,
                        email: email,
                        password: password)
        end
    end
end