require './lib/bike.rb'

class DockingStation
  def release_bike
    raise Exception.new "No bikes available!" if @bike == nil
    return @bike
  end
  def dock(bike)
    raise Exception.new "Bikes cannot be docked - station is full!" if @bike != nil
    @bike = bike
  end
  attr_reader :bike
end
