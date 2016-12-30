# Function Expressions

# The arrow converts to function(){}
# Functions always have a return value : the last item in the function
# Default parameters can be defined
coffee = (message="Ready for some coffee?") ->
  console.log message
  "You have logged the following message: #{message}"

# When the function has no parameter, it has to be called with parenthesis
# When the function has parameters, it can be called with or without parenthesis
coffee()
coffee("My first message")
coffee "My second message"

# Generates

# var coffee;
#
# coffee = function(message) {
#   if (message == null) {
#     message = "Ready for some coffee?";
#   }
#   console.log(message);
#   return "You have logged the following message: " + message;
# };



