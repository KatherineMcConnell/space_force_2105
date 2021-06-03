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

  def add_personnel(person)
    @personnel << person
  end

  def recommend_personnel(ship)
    reqs = @ships.flat_map do |ship|
      ship.requirements

    @personnel.each do |person|
      person.specialties_and_yrs_exp.include?(reqs)

      #still need exp => comparitor
    end
  end
end
