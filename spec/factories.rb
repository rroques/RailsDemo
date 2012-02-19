# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.firstname             "Michael"
  user.lastname              "Hartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :firstname do |n|
  "Person #{n}"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.user :user
end

