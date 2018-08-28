# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_hash = roster.sort_by{|grade, student|student}
    new_hash.sort.to_h
  end
end

school = School.new("Bayside High School")
new_hash = {}
    roster.each do|grade, student|
      new_hash[grade]= student.sort
    end
    new_hash
