FactoryGirl.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password "password"
    password_confirmation "password"
    admin false
    factory :admin do
      admin true
    end
  end

  factory :invalid_email_user, parent: :user do |f|
    f.email nil
  end

  factory :invalid_password_user, parent: :user do |f|
    f.password nil
  end
end
