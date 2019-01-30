require 'pry'
class School
  attr_accessor :roster, :add_student, :grade, :sort
  attr_reader :school

@@all = []

  def initialize(school)
    @school = school
    @roster = {}
    @@all << self
  end
  def self.all
    @@all
  end
  def add_student(name, grade)
      @roster[grade] ||= []  #||= will allow this line to run once.
      @roster[grade] << name
  end
  def grade(names_of_students)
    roster[names_of_students]
  end
  def sort
      sorted = {}
    roster.each do |grade, students|
    sorted[grade] ||= students.sort
  end
  sorted
  end

end















#   def sort
#     sorted = {}
#     roster.each do |grade, students|
#     sorted[grade] = students.sort
#    end
#     sorted
#   end
#
# end
