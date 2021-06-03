class Spacecraft
  attr_reader :name,
              :fuel
  def initialize(craft_info)
    @name = craft_info[:name]
    @fuel = craft_info[:fuel]
  end
end
