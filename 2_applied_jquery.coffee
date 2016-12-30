# Applied jQuery

# Example 1
$ ->
  changeTab = (e) ->
    e.preventDefault()
    $("#tabs li a.active").removeClass "active"
    $(@).addClass "active"  # @ references this

  $("#tabs ul li a").click changeTab

#  $(function() {
#   var changeTab;
#     changeTab = function(e) {
#       e.preventDefault();
#       $("#tabs li a.active").removeClass("active");
#       return $(this).addClass("active");
#     };
#   return $("#tabs ul li a").click(changeTab);
#  });



# Example 2

$("#tabs #error a").click (e) ->
  e.preventDefault()

#  $("#tabs #error a").click(function(e) {
#   return e.preventDefault();
#  });


# Example 3

showNumberOfFlights = (e) ->
  num_flights = $(@).data "flights"
  $(@).append "<span>#{num_flights}</span>"
  $("#tabs span.tooltip").show()

#  var showNumberOfFlights;
#
#  showNumberOfFlights = function(e) {
#    var num_flights;
#    num_flights = $(this).data("flights");
#    $(this).append("<span>" + num_flights + "</span>");
#    return $("#tabs span.tooltip").show();
#  };

# Example 4

$('.drink li').hover (->
  $(@).find('span').show()),
  -> $(@).find('span').hide()

#  $('.drink li').hover(function() {
#   $(this).find('span').show();
#  }, function() {
#   $(this).find('span').hide();
#  });