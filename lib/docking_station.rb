require './lib/bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize
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
    @bikes.count == DEFAULT_CAPACITY
  end
  def empty?
    @bikes.empty?
  end
end
