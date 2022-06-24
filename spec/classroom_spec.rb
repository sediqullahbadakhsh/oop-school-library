require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before(:each) do
    @class = Classroom.new('A')
  end

  it 'should have label' do
    expect(@class.label).to eq 'A'
  end

  it 'should add a student to students array' do
    student = Student.new('A', 15, name: 'SomeOne', parent_permission: true)
    @class.add_student(student)
    expect(@class.students).to eq [student]
  end

  it 'should be empty students array' do
    expect(@class.students).to eq []
  end

  it 'takes one parameter and returns a Classroom object' do
    @class.should be_an_instance_of Classroom
  end
end
