# first attempt 6/18/17
# class School
#
#   attr_reader :roster
#
#   def initialize(name)
#     @school = name
#     @roster = {}
#   end
#
#   def add_student(student, grade)
#     #check if the grade exists
#     #if it does not, add it and then add the student
#     if !@roster.keys.include?(grade)
#       @roster[grade] = []
#     end
#     @roster[grade] << student
#   end
#
#   def grade(num)
#     @roster[num]
#   end
#
#   def sort
#     #iterate over the hash and sort each array
#     @roster.each {|k,v| @roster[k] = v.sort!}
#   end
#
# end

# second attempt 7/3/17
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] = [] unless roster.keys.include?(grade)
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each {|grade, students| roster[grade] = students.sort!}
  end
end
