namespace :seed do
  desc "TODO"
  task data: :environment do
    user = User.new(email: "s@gmail.com", password: "s@gmail.com", password_confirmation: "s@gmail.com")
    user.save
  end

end