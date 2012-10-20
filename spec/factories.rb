# By using the symbol ':user', we get Factory Girl to simulate the User model.
FactoryGirl.define do
  factory :user do |user|
    user.firstname "Michael"
    user.lastname "Hartl"
    user.email "mhartl@example.com"
    user.password "foobar"
    user.password_confirmation "foobar"
  end

  sequence :firstname do |n|
    "Person #{n}"
  end

  sequence :email do |n|
    "person-#{n}@example.com"
  end

  factory :micropost do |micropost|
    micropost.content "Foo bar"
    micropost.user :user
  end

end



