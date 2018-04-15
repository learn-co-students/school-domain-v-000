require 'pry'
class School
attr_accessor :roster, :school, :student, :grade
def initialize (school)
  @school = school
  @roster = {}
end

def add_student (student,grade)
  @grade = grade
  @student = student
  @roster[@grade] ||= []
  @roster[@grade] << @student
end

def grade (grade)
@roster[grade]
end

def sort
  updated_hash = {}
  @roster.each do |grade,names|
  updated_hash[grade]= names.sort
  end
  updated_hash
end

end
