namespace :db do
  desc "Preenchendo a base de usuarios de teste"
    task populate: :environment do
      Usuario.create!(nome: "Example User",
                   end_rua:"Rua dos Exemplos",
                   end_num:"171",
                   end_comp:"c.6",
                   end_cep:"22222222",
                   end_bai:"Maria de Fatima",
                   celular:"2188888888",
                   email: "example@railstutorial.org",
                   password: "foobar",
                   password_confirmation: "foobar")
      99.times do |n|
        nome  = Faker::Name.name
        end_rua = Faker::Address.street_name
        end_num = "#{n+1}"
        end_comp = "c.#{n+1}"
        end_cep = "#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}#{n+1}"
        end_bai = Faker::Address.city
        celular = "#{n+1}#{n+1}#{n+1}#{n+1}"
        email = "example-#{n+1}@matconta.org"
        password  = "password"
        Usuario.create!(nome: nome,
                   end_rua: end_rua,
                   end_num: end_num,
                   end_comp: end_comp,
                   end_cep: end_cep,
                   end_bai: end_bai,
                   celular: celular,
                   email: email,
                   password: password,
                   password_confirmation: password)
      end
    end

  desc "Preenchendo a base de admins de teste"
    task populate: :environment do
      3.times do |n|
        login  = Faker::Name.name
        password  = "password"
        Admin.create!(login: login,
                   password: password,
                   password_confirmation: password)
    end
  end
end