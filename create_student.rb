require './student'
require './validations'


class CreateStudent
  include Validations

  def initialize(people)
    @people = people
  end


  def create_student
    age = numeric(message: "Age:\s")
    name = not_empty(message: "Name:\s")
    loop do
      print "Has parent permission [Y/N]?\s"
      permission = gets.chomp
      if %w[y Y].include?(permission)
        student = Student.new(nil, age, name: name, parent_permission: true)
        @people << student unless @people.include?(student)
        break
      elsif %w[n N].include?(permission)
        student = Student.new(nil, age, name: name, parent_permission: false)
        @people << student unless @people.include?(student)
        break
      end
    end
  end
end