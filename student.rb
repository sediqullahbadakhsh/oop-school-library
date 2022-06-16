require './person'
# Student class
class Student < Person
  attr_accessor :classroom

  def initialize(classroom)
    super(age, name: 'Unknown', parent_permission: true, classroom)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def change_classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
