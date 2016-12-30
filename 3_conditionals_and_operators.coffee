# Conditionals and Operators

# Example 1
age = 17

if age < 18
  console.log "Under age"
else
  console.log "Of age"

console.log "Under age" if age < 18

if age < 18 then console.log "Under age" else console.log "Of age"

#  if (age < 18) {
#    console.log("Under age");
#  } else {
#    console.log("Of age");
#  }


# Example 2

#  ==  is           =>    ===
#  !=  isnt         =>    !==
#  not              =>    !
#  and              =>    &&
#  or               =>    ||
#  true yes on      =>    true
#  false no off     =>    false

paid = -> true
coffee = -> true
pour = -> console.log "pouring coffee"
addCaffeine = -> console.log "adding caffeine"
decaf = -> false

if paid() and coffee() then pour()
addCaffeine() unless decaf()


# Example 3

strength = 4
if 3 < strength < 5
  console.log "strong coffee"

#  if ((3 < strength && strength < 5)) {
#    console.log("strong coffee");
#  }


# Example 4
cupsOfCoffee = 2
message = switch cupsOfCoffee
  when 0 then 'Asleep'
  when 1 then 'Eyes Open'
  when 2 then 'Buzzed'
  else 'Dangerous'

#  var message;
#  message = (function() {
#    switch (cupsOfCoffee) {
#      case 0:
#         return 'Asleep';
#      case 1:
#         return 'Eyes Open';
#      case 2:
#         return 'Buzzed';
#      default:
#         return 'Dangerous';
#  }
#  })();


# Example 5

# ? is the existential operator

if coffeePot?
  console.log "it exists!"

#  if (typeof cupsOfCoffee !== "undefined" && cupsOfCoffee !== null) {
#    console.log("it exists!");
#  }

coffeePot?.brew()
# same as coffeePot.brew() if coffeePot?

# Only call functions if they exist
coffeePot?.brew?().pour?()