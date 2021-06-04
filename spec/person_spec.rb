require './lib/spacecraft'
require './lib/person'

RSpec.describe Person do
  before(:each) do
    @kathy = Person.new('Kathy Chan', 10)
  end

  it 'exists' do

    expect(@kathy).to be_an_instance_of(Person)
  end

  it 'has attributes' do

    expect(@kathy.name).to eq("Kathy Chan")
    expect(@kathy.experience).to eq(10)
    expect(@kathy.specialties).to eq([])
  end

  it 'can add and list specialties' do
    @kathy.add_specialty(:astrophysics)
    @kathy.add_specialty(:quantum_mechanics)

    expect(@kathy.specialties).to eq([:astrophysics, :quantum_mechanics])
  end
end
