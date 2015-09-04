require_relative 'Bike'



class DockingStation

  attr_reader :capacity
  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    
    if empty?
      fail 'No bikes available'
    elsif @bikes.pop.working? == false 
      fail 'No bikes available' 
    else
      @bikes.pop
    end
    
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
