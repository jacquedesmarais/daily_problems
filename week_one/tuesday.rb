fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]

new_fruits = fruits.map {|fruit| [fruit["name"], fruit["color"]] }.to_h

p new_fruits
