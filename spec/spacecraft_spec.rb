require './lib/spacecraft'

RSpec.describe Spacecraft do
  before(:each) do
    @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
  end

  it 'exists' do

    expect(@daedalus).to be_an_instance_of(Spacecraft)
  end

  it 'has attributes' do

    expect(@daedalus.name).to eq('Daedalus')
    expect(@daedalus.fuel).to eq(400)
    expect(@daedalus.requirements).to eq([])
    @daedalus.add_requirement({astrophysics: 6})
    @daedalus.add_requirement({quantum_mechanics: 3})

    expect(@daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])
  end

end
