FactoryBot.define do
  factory :case do
    observation_date { Faker::Date.between('2020-01-01', Date.strptime(Date.today.to_s, "%Y-%m-%d"))}
    # province { Faker::Address.city  }
    country { Faker::Address.country }
    # last_update { Faker::Date.between('2020-01-01', Date.strptime(Date.today.to_s, "%Y-%m-%d")) }
    confirmed { Faker::Number.number(10)}
    deaths { Faker::Number.number(7)}
    recovered { Faker::Number.number(rand(1..4))}
  end
end
