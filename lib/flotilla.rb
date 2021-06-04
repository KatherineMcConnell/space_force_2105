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
  # when iterating over....megan says start with...
    # start just by prying right under the method
    #return list of persons
      # have a specialty that matches on of the ships requirements
        #have experience >= the required experience level
  recommended = []
    @personnel.each do |person|
      ship.requirements.each do |req_info|

      requirement = req_info.keys[0]
      experience = req_info[requirement]
        if person.specialties.include?(requirement) && person.experience >= experience
          recommended << person
        end
      end
    end
    recommended.uniq
  end

  def personnel_by_ship
    # Iterating over one collection to build soemthing totally new

  #   personnel_assignments = {}
  #   @ships.each do |ship|
  #     personnel_assignments[ship] = recommend_personnel(ship)
  #   end
  #   personnel_assignments
    @ships.reduce({}) do |acc, ship|
      acc[ship] = recommend_personnel(ship)
      acc
    end
  end

  # def personnel_by_ship
  #can't use group by need to talk to Megan about more :)
  #   personnel_assignments = Hash.new{|hash,key| hash[key]= []
end
