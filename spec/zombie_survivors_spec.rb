require 'rspec'
require './survivor'

describe 'Step One: Survivors' do
  
  it 'a survivor has a name' do
    a_name = 'Pacor'
    a_survivor = Survivor.new(a_name)
    expect(a_survivor.identify()).to eq(a_name)
  end

  it 'a survivor without wounds' do
    a_survivor = Survivor.new('any_name')
    expect(a_survivor).not_to be_wounded
  end

  it 'a survivor dies immediately when hurt to death' do
    a_survivor = Survivor.new('any_name')
    
    hurt_to_death(a_survivor)

    expect(a_survivor).to be_dead
  end

  it 'a survivor is alive' do
    a_survivor = Survivor.new('any_name')
    expect(a_survivor).not_to be_dead
  end

  it 'a survivor starts ready' do
    a_survivor = Survivor.new('any_name')
    expect(a_survivor).to be_ready
  end

  def hurt_to_death(somebody)
    wounds_to_death = 2
    wounds_to_death.times{somebody.be_hurt()}
  end 
end


