require_relative '../classroom'
# require_relative '../student'

describe Classroom do 
  context “When testing the HelloWorld class” do 
     
     it "The say_hello method should return 'Hello World'" do 
        hw = HelloWorld.new 
        message = hw.say_hello 
        expect(message).to eq "Hello World!" 
     end
     
  end 
end