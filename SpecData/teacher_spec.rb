require_relative '../teacher'

describe Teacher do 
  context “Should c” do 
     
     it "The say_hello method should return 'Hello World'" do 
        hw = HelloWorld.new 
        message = hw.say_hello 
        expect(message).to eq "Hello World!" 
     end
     
  end 
end