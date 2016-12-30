# Example 1

$('#tabs ul li a').bind
  click: changeTab
  mouseenter: showNumberOfFlights
  mouseleave: hideNumberOfFlights

#  $('#tabs ul li a').bind({
#    click: changeTab,
#    mouseenter: showNumberOfFlights,
#    mouseleave: hideNumberOfFlights
#  });


# Example 2

showFlights: (activeDiv) ->
  $('#tabs div').hide()

  fetchingFlights.abort() if fetchingFlights

  fetchingFlights = $.ajax '/flights',
    data:
      date: activeDiv
    cache: false

    error: (result) ->
      if result.statusText isnt "abort"
        $('#tabs .error').show()

#    ({
#      showFlights: function(activeDiv) {
#        var fetchingFlights;
#        $('#tabs div').hide();
#
#        if (fetchingFlights) {
#          fetchingFlights.abort();
#        }
#
#        return fetchingFlights = $.ajax('/flights', {
#          data: {
#            date: activeDiv
#          },
#          cache: false,
#          error: function(result) {
#            if (result.statusText !== "abort") {
#              return $('#tabs .error').show();
#            }
#          }
#        });
#      }
#    });


# Example 3

filteredFlights =
  (flight for flight in currentFlights when flight.stops is '2+' or flight.routing is 0)

#var filteredFlights = []
#
#$.each(currentFlights, function(index, flight){
#  if(flight.stops == '2+' || flight.routing == 0){
#    filteredFlights.push(flight);
#  }
#})