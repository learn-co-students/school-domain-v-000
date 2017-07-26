require 'pry'
class School

  attr_accessor :roster, :name

  def initialize(name)
    @name= name
    @roster = {}
  end

  def add_student(student_name, grade_levels)
    #hash_name[new_key_name] = new_value
    #A school should have a roster. The roster should be an empty hash upon
    #initialization but will be built out to contain keys of grade levels. The value of each key will be an array of student names.
    @roster[grade_levels] = [] unless @roster.keys.include?(grade_levels)
    @roster[grade_levels] << student_name
end

  def grade(grade_levels)
    @roster[grade_levels]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
