require_relative '../student'
require_relative '../person'
require_relative '../classroom'

describe Student do
  before(:each) do
    @student = Student.new(Classroom.new('A'), 29, name: 'Someone', parent_permission: true)
  end

  it 'should have a name' do
    expect(@student.name).to eq 'Someone'
  end

  it 'should have an age' do
    expect(@student.age).to eq 29
  end

  it 'should have rentals' do
    expect(@student.rentals).to eq([])
  end

  it 'should have a parent_permission' do
    expect(@student.parent_permission).to eq true
  end

  it 'should have a can_use_services?' do
    expect(@student.can_use_services?).to eq true
  end

  it 'should have a correct_name' do
    expect(@student.correct_name).to eq 'Someone'
  end

  it 'if it plays hooky ¯\(ツ)/¯' do
    expect(@student.play_hooky).to eql("¯\(ツ)/¯")
  end

  it 'Create an instance of student class' do
    expect(@student).to be_an_instance_of(Student)
  end

  it 'Check the classroom label' do
    expect(@student.classroom.label).to eq('A')
  end
end
