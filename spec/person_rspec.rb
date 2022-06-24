require_relative '../person'

describe Person do
  before(:each) do
    @person = Person.new(25, name: 'SomeOne', parent_permission: true)
  end

  it 'should have a name' do
    expect(@person.name).to eq 'SomeOne'
  end

  it 'should have an Age' do
    expect(@person.age).to eq 25
  end

  it 'should have a can_use_services?' do
    expect(@person.can_use_services?).to eq true
  end

  it 'should have a correct_name' do
    expect(@person.correct_name).to eq 'SomeOne'
  end
end
