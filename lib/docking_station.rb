require './lib/bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = Array.new
    @capacity = capacity
  end

  def release_bike
    raise "No bikes available!" if empty?
    raise "No working bikes available" if bikes[-1].broken == true

    return bikes.pop
  end

  def dock(bike, not_working = bike.broken)
    raise "Bikes cannot be docked - station is full!" if full?
    bike.broken = not_working
    return bikes.push(bike)
  end

  private

  def full?
    bikes.count == capacity
  end

  def empty?
    bikes.empty?
  end

end
