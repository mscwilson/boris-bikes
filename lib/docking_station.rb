require './lib/bike.rb'

class DockingStation
  @capacity = 20
  
  def initialize
    @bikes = Array.new
  end
  def release_bike
    raise Exception.new "No bikes available!" if @bikes.empty?
    return @bikes.pop  
  end
  def dock(bike)
    raise Exception.new "Bikes cannot be docked - station is full!" if @bikes.count == @capacity
    return @bikes.push(bike)
  end
  attr_reader :bike
end
