require 'faker'

Role.destroy_all
Audition.destroy_all

10.times do |t|
    Role.create!(character_name: Faker::JapaneseMedia::StudioGhibli.character)
end 

10.times do |t| 
    Audition.create!(
        actor: Faker::Name.name,
        location: Faker::Address.zip_code,
        phone: Faker::PhoneNumber.phone_number,
        hired: false,
        role_id: Role.all.sample.id
    )
end 