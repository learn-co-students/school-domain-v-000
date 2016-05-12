# code here!

class School
  
  attr_reader :name
  attr_accessor :roster

  def initialize (name)
    @name = name
    roster ={}
    @roster = roster
  end

  def add_student(student, grade)
      roster[grade] ||= []
      roster[grade] << student 
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    roster.each do |grade, student|
      roster[grade] = student.sort!
    end
    roster
  end
end # of class School


#Sort method was difficult to pass.  The following are several attempts that failed
#
# Original
#   def sort
#     roster[grade].each do |student|
#       student.sort
#     end
#   end

# Version2
#   def sort
#     roster[grade,student].each do |student|
#       student.sort!
#     end
#   end

# Version3
#   def sort
#     roster[grade].each do |grade,student|
#       student.sort!
#     end
#   end

# Final
#     def sort
#         roster.each do |grade, student|
#           roster[grade] = student.sort!
#         end
#         roster
#     end


