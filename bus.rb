class Bus

attr_accessor :number, :destination, :passengers

def initialize(number, destination, passengers)
  @number = number
  @destination = destination
  @drive = "Brum Brum"
  @passengers = []
end

  def number_of_passengers()
    return @passengers.length
  end

  def add_passenger(new_passenger)
    @passengers.push(new_passenger)
  end

  def remove_passenger(old_passenger)
    @passengers.delete(old_passenger)
  end

  def empty()
    @passengers.clear()
  end

end
