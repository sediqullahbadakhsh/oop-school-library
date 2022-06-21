require './teacher'
require './validations'

class CreateTeacher
  include Validations

  def initialize(people)
    @people = people
  end

  def create_teacher
    age = numeric(message: "Age:\s")
    name = not_empty(message: "Name:\s")
    specialization = not_empty(message: "Specialization:\s")
    teacher = Teacher.new(specialization, age, name: name)
    @people << teacher unless @people.include?(teacher)
  end
end
