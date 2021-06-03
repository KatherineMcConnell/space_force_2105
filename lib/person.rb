class Person
  attr_reader :name,
              :experience,
              :specialties
  def initialize(name, experience)
    @name = name
    @experience = experience
    @specialties =[]
  end

  def add_specialty(specialty)
    @specialties << specialty
  end

  def specialties_and_yrs_exp
    yrs_in_spec = {}
    @specialties.each do |specialty|
      if yrs_in_spec[specialty].nil?
        yrs_in_spec[specialty] = @experience
      end
    end
    yrs_in_spec
  end
end
