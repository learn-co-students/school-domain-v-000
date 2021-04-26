# code here!
require 'pry'
class School

  attr_accessor :school, :roster, :grade  #, :student, :students

  def initialize(school)
    @school = school
    @roster = {}
  end


  grade = {}

  def new(roster)
    @roster=roster
  end

  def add_student(student, grade)

    roster[grade] ||= []
    #if roster[grade].include?(student)
#       roster[grade].push(student)
#     else
#       roster[grade] = []
      roster[grade] << student
   # end
#        if roster[grade].length == 0
#           roster[grade] = []
#           roster[grade] << student
#        else
#           roster[grade].push(student)
#        end
  end

  def grade(grade)
    roster[grade]

  end

  def sort
    all_students = {}
    roster.each do |grade, students| #@roster.collect: produces nested hash
  #   binding.pry
      all_students[grade] = students.sort
      #  all_students << students
      #  all_students= all_students.sort
      end
      return all_students
    end

#binding.pry
#   def sort
#     all_students = []
#     roster.each do |grade, students| #@roster.collect: produces nested hash
#   #   binding.pry
#       students.collect do |pupil|
#        # binding.pry
#         all_students << pupil
#         all_students= all_students.sort
#       end
#       end
#       return all_students
#     end

  end