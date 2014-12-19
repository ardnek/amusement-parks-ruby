require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

result = {}

parks.each do |park|
  value = park[:id]
  # setting the result as the value
  result[value] = park
end
pp result


# parks has a class of array
# park has a class of hash

# p parks.class
# p park.class
# pp park
