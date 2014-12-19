require 'yaml'
require 'pp'

raw_data = File.read('../data/amusement_parks.yml')
parks = YAML.load(raw_data)

# pp parks
# pp park.class

result = {}

parks.each do |park|
  value = park[:country]
  result[value] = result[value] || []
  result[value] << park
end
pp result


# value is the variable
# park is the hash
# [:country] is the key
# USA is the value
