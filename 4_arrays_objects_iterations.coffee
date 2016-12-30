# Example 1 : Range

range = [1..5]  # var range = [1, 2, 3, 4, 5];
range = [1...5] # var range = [1, 2, 3, 4];
range[2..4]   # [3, 4]
range[1..-1]  # [2, 3, 4, 5]

# Example 2 : List Comprehensions

storeLocations = ['Orlando', 'Miami', 'New York']

storeLocations = [
  'Orlando'
  'Miami'
  'New York'
]

storeLocations.forEach (location, index) ->
  console.log "Location: #{location}"

for location in storeLocations
  console.log "Location: #{location}"

# Creates an array where each element is the result of a loop iteration
locations = ("#{loc}, US" for loc in storeLocations)
console.log locations   # [ 'Orlando, US', 'Miami, US', 'New York, US' ]

locations = ("#{loc}, US" for loc in storeLocations when loc isnt "Miami")
console.log locations   # [ 'Orlando, US', 'New York, US' ]


# Example 3 : Splats (variable number of arguments)

searchLocations = (brand, cities...) ->
  console.log "Looking for #{brand} in #{cities.join(', ')}"

searchLocations('Starbucks', 'San Francisco')
searchLocations('Starbucks', 'San Francisco', 'Los Angeles')
searchLocations('Starbucks', 'San Francisco', 'Los Angeles', 'San Diego')

params = ['The Coffee Bean', 'North Beach', 'Haight Ashbury', 'Castro']
searchLocations(params...)



# Example 4 : Objects

coffee = {name: 'French', strength: 1}

coffee = name: 'French', strength: 1

coffee =
  name: 'French',
  strength: 1
  brew: -> console.log "Brewing #{@name}"
  pour: (amount=1) ->
    if amount is 1
      console.log "Pouring a single cup"
    else
      console.log "Pouring #{amount} cups"

#  var coffee;
#
#  coffee = {
#    name: 'French',
#    strength: 1,
#    brew: function() {
#      return console.log("Brewing " + this.name);
#    },
#    pour: function(amount) {
#      if (amount == null) {
#        amount = 1;
#      }
#      if (amount === 1) {
#        return console.log("Pouring a single cup");
#      } else {
#        return console.log("Pouring " + amount + " cups");
#      }
#    }
#  };

coffees =
  french:
    strength: 1
    in_stock: 3
  italian:
    strength: 2
    in_stock: 5
  decaf:
    strength: 0
    in_stock: 0

str = ("#{coffee} has #{attrs.in_stock}" for coffee, attrs of coffees)
console.log str   # => [ 'french has 3', 'italian has 5', 'decaf has 0' ]

str = ("#{coffee} has #{attrs.in_stock}" for coffee, attrs of coffees when attrs.in_stock > 0)
console.log str   # => [ 'french has 3', 'italian has 5' ]
