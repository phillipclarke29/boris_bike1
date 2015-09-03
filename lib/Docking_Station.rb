require_relative 'Bike'

class DockingStation

  def release_bike
    @bike

  end

  def dock(bike)
    @bike = bike
  end

end
