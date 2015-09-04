require_relative 'Bike'



class DockingStation

  attr_reader :capacity
  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full' if full?
    @bikes << bike
  end

  private

  attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= capacity
  end

end
