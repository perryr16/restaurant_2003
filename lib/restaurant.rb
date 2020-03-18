require 'pry'
class Restaurant

  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
  #  binding.pry
    closing_int = opening_time.to_i + time
    @closing_time = closing_int.to_s + ":00"
  end

  def add_dish(dish)
    @dishes << dish
  end

end
