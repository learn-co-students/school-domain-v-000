# code here!
class School 
  attr_accessor :name, :roster, :add_student, :grade, :sort
  def initialize(name)
    @name = name
    @roster={}
  end
  
  def add_student (students, grade)
    # grade = 10
    # @roster = {}
    # @roster[grade] = { 10: nil }
    @roster[grade] ||= [] # { 10: [] }
    @roster[grade] << students
  end
  
  def grade (grade)
    @roster[grade]
  end
  
  def sort
    new_hash = {}
    @roster.each do |grade, students|
      new_hash[grade] = students.sort
    end
      new_hash
  end
end