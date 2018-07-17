require "pry"
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def roster
    @roster
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    sorted_hash = {}
    roster.each do |grade, students|
      sorted_hash[grade] = students.sort
      #binding.pry
    end
    sorted_hash
  end
end