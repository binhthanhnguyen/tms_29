namespace :sample_data do
  desc "TODO"
  task create_admin: :environment do
    User.create!(name: "Example User",
      email: "example@railstutorial.org",
      password: "foobar",
      password_confirmation: "foobar",
      admin: true)
  end
end
