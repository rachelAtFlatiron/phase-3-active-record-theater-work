require 'faker'

Audition.destroy_all
Role.destroy_all 

10.times do |i|
    Role.create(character_name: Faker::JapaneseMedia::StudioGhibli::character)
end 

20.times do |i|
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.zip,
        phone: Faker::PhoneNumber.phone_number,
        hired: false,
        role_id: Role.all.sample(1)[0].id
    )
end 