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

  def open_for_lunch?
    open_time_int = @opening_time.to_i
    open_time_int < 12
  end

  def menu_dish_names
    dish_names = []

    @dishes.each do |dish|
      dish_names << dish.upcase
    end

    dish_names
  end

  def announce_closing_time
    #am or pm
    if @closing_time.to_i > 12
      am_pm = "PM"
    elsif @closing_time.to_i <= 12
      am_pm = "AM"
    end
    #convert to 12 hour
    if am_pm == "PM"
      closing_time_12hr_int = @closing_time.to_i - 12
    else closing_time_12hr_int = @closing_time.to_i
    end
    #convert to string with :00
    closing_time_12hr = closing_time_12hr_int.to_s + ":00"
    "#{@name} will be closing at #{closing_time_12hr}#{am_pm}"
  end

end
