require_relative '../person'

describe Person do 
  context 'It should add a person' do 
     person = Person.new(11, 18, 'Karim', parent_permission: true)
     person1 = Person.new(11, 18, 'Karim', parent_permission: false)


     it 'should be an instance pf class Person' do
        expect(message).to be_an_instance_of(Person) 
     end
     
     it 'should validate name of Person' do
      expect(person.validate_name).not_to eq('Karim')
     end

     it 'should check age of Person' do
      expect(person.age).to eq(18)
     end

     it 'should return true if can_use_services? = true' do
      expect(person.can_use_services?).to eq true
     end

     it 'should return true if can_use_services? = false' do
      expect(person1.can_use_services?).to eq false
     end  
  end 
end