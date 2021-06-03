class Flotilla
  attr_reader :name,
              :personnel,
              :ships
  def initialize(fleet_info)
    @name = fleet_info[:designation]
    @personnel =[]
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end
end
