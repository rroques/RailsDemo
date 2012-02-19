namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:firstname => "Example",
                 :lastname => "User",
                 :email => "example@railstutorial.org",
                 :password => "foobar",
                 :password_confirmation => "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      firstname  = Faker::Name.name
      lastname  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(:firstname => firstname,
                   :lastname => lastname,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
    
    50.times do
      User.all(:limit => 6).each do |user|
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
    
  end
end

