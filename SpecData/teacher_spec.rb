require_relative '../teacher'

class Teacher
   
end

describe Teacher do 
  context 'It should create a teacher' do
   id = 9
   age = 48
   name = 'Lexa'
   specialization = 'History'
   teacher = Teacher.new(id, age, name, specialization, parent_permission: true)
     
     it 'should create an instance of class student' do
        expect(teacher).to be_an_instance_of(Teacher)
     end     
  end 
end