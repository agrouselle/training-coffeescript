# Example 1 : Classes

class Coffee
  constructor: (@name, @strength=1) ->
  # Adding @ in front of the parameters directly defines and assigns the instance variable

  brew: -> "Brewing #{@name}"

  pour: (amount=1) ->
    if amount is 1
      "Pouring a single cup"
    else
      "Pouring #{amount} cups"

#  var Coffee;
#  Coffee = (function() {
#    function Coffee(name, strength) {
#    this.name = name;
#    this.strength = strength != null ? strength : 1;
#  }
#  Coffee.prototype.brew = function() {
#    return "Brewing " + this.name;
#  };
#  Coffee.prototype.pour = function(amount) {
#    if (amount == null) {
#      amount = 1;
#    }
#    if (amount === 1) {
#      return "Pouring a single cup";
#    } else {
#      return "Pouring " + amount + " cups";
#    }
#  };
#
#  return Coffee;
#
#  })();


french = new Coffee("French", 2)
console.log french.brew()
console.log french.pour()




# Example 2 : Inheritance

class Espresso extends Coffee
  constructor: (@name, @strength=5) ->
    @color = 'black'

  brew: -> "Brewing espresso #{@name}"
  pour: (amount=1) ->
    "#{super(amount)}, but that won't be enough"


#  var Espresso,
#    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
#  hasProp = {}.hasOwnProperty;
#
#  Espresso = (function(superClass) {
#    extend(Espresso, superClass);
#
#    function Espresso(name, strength) {
#      this.name = name;
#    this.strength = strength != null ? strength : 5;
#    this.color = 'black';
#  }
#
#  Espresso.prototype.brew = function() {
#    return "Brewing espresso " + this.name;
#  };
#
#  Espresso.prototype.pour = function(amount) {
#    if (amount == null) {
#      amount = 1;
#    }
#    return (Espresso.__super__.pour.call(this, amount)) + ", but that won't be enough";
#  };
#
#  return Espresso;
#
#  })(Coffee);


espresso = new Espresso('Lavazza')
console.log espresso.brew()
console.log espresso.pour(2)


# Example 3 : The Fat Arrow

class Coffee
  constructor: (@name, @strength=1, @inventory=0) ->

  pour: ->
    # Notice the use of => instead of ->
    # Using ->, this is the context of the click function, where @name and @inventory don't exist
    # Using =>, this is the context of the class
    $("#pour-#{@name}").click (e) =>
      if @inventory isnt 0
        @inventory -= 1
        console.log "Poured a cup of #{@name}"


#  var Coffee;
#
#  Coffee = (function() {
#      function Coffee(name, strength, inventory) {
#        this.name = name;
#        this.strength = strength != null ? strength : 1;
#        this.inventory = inventory != null ? inventory : 0;
#      }
#
#     Coffee.prototype.pour = function() {
#       return $("#pour-" + this.name).click((function(_this) {
#         return function(e) {
#           if (_this.inventory !== 0) {
#             _this.inventory -= 1;
#             return console.log("Poured a cup of " + _this.name);
#           }
#         };
#       })(this));
#     };
#
#     return Coffee;
#
#  })();


# Example 4

class SelectFlights
  constructor: (@fetchingFlights=null) ->
    $("#tabs ul li a").bind
      click: @changeTab

    $("#tabs #error a").click (event) =>
      event.preventDefault()
      @showFlights $("#tabs ul li a.active").attr("href")

  showFlights: (activeDiv) ->
  changeTab: (event) =>

selectFlights = new SelectFlights()

#
#  var SelectFlights, selectFlights,
#    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
#
#  SelectFlights = (function() {
#      function SelectFlights(fetchingFlights) {
#        this.fetchingFlights = fetchingFlights != null ? fetchingFlights : null;
#        this.changeTab = bind(this.changeTab, this);
#        $("#tabs ul li a").bind({
#          click: this.changeTab
#        });
#        $("#tabs #error a").click((function(_this) {
#          return function(event) {
#            event.preventDefault();
#            return _this.showFlights($("#tabs ul li a.active").attr("href"));
#          };
#        })(this));
#      }
#
#      SelectFlights.prototype.showFlights = function(activeDiv) {};
#
#      SelectFlights.prototype.changeTab = function(event) {};
#
#      return SelectFlights;
#
#  })();
#
#  selectFlights = new SelectFlights();