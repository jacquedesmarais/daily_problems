people = [
  {"name" => "Saron", "age" => 34},
  {"name" => "Majora", "age" => 28},
  {"name" => "Danilo", "age" => 45}
]

people.sort! { |person_one, person_two| person_one["age"] <=> person_two["age"] }

p people