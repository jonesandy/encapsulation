class Watercooler

  def initialize
    @water = 10
    @cups = 0
    @cups_till_empty = 20
  end

  def show_water_level
    puts "Water level in cooler currently at #{@water} litres."
    puts "Only #{@cups_till_empty} cups left till I need filling up."
  end

  def drink
    cup_of_water
    number_of_cups
    show_water_level
  end

  private

  def cup_of_water
    @water -= 0.5
  end

  def number_of_cups
    @cups += 1
    @cups_till_empty -= 1
  end

end

class Microwave

  def watercooler_level(object)
    object.show_water_level
  end

  def microwave_drink(object)
    object.cup_of_water
  end

end

class Human

  def thirsty(object)
    object.drink
  end

end