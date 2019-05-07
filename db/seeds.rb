(1..100).to_a.each do |index|
  User.create(
      email: "email#{index}@healthtap.com",
      first_name: "first_name#{index}",
      last_name: "last_name#{index}",
      title: "title#{index}",
      )
end

(1..100).to_a.each do |index|
  Country.create(
      name: "name#{index}",
      code: "code#{index}",
      )
end

(1..100).to_a.each do |index|
  State.create(
      name: "name#{index}",
      country_id: Country.all.sample.id,
      )
end

(1..100).to_a.each do |index|
  City.create(
      name: "name#{index}",
      state_id: State.all.sample.id,
      )
end

User.find_each do |user|
  City.all.sample(3).each do |city|
    Address.create(user_id: user.id, city_id: city.id, line_1: "line_1_#{user.id}", line_2: "line_2_#{user.id}")
  end
end