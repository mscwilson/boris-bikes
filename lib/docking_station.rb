require './lib/bike.rb'

class DockingStation
  def release_bike
    raise Exception.new "No bikes available!" unless @bike != nil
    return @bike
  end
  def dock(bike)
    @bike = bike
  end
  attr_reader :bike
end
