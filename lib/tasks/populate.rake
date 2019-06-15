namespace :populate do
  desc 'Popular banco com usuários'
  task users: :environment do
    puts 'Gerando os contatos (Users)... '
    10.times do |i|
      User.create!([{ 
        username: Faker::Name.name,
        password: 'teste',
        email: Faker::Internet.email,
        active: Faker::Lorem.paragraph(2) 
        }])
    end
  end
end