require_relative '../student'

describe Student do 
  context 'It should create a student' do
   id = 13
   age = 28
   name = 'Walker'
   classroom = '4 red'
   parent_permission = true
   student = Student.new(id, age, name, classroom, parent_permission)

     it 'should create an instance of class student' do
        expect(student).to be_an_instance_of(Student)
     end

     it 'should check student details' do
      expect(student.id).to eq(id)
      expect(student.age).to eq(age)
      expect(student.name).to eq(name)
      expect(student.classroom).to eq(classroom)
      expect(student.parent_permission).to eq(parent_permission)
     end
  end 
end