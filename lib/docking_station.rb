require './lib/bike.rb'

class DockingStation
  def initialize
    @capacity = 20
    @bikes = Array.new
  end
  def release_bike
    raise "No bikes available!" if empty?
    return @bikes.pop  
  end
  def dock(bike)
    raise "Bikes cannot be docked - station is full!" if full?
    return @bikes.push(bike)
  end
  attr_reader :bike
  private
  def full?
    @bikes.count == @capacity
  end
  def empty?
    @bikes.empty?
  end
end
