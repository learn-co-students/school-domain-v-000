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
    empty_hash = {}
    sorted_roster = roster.collect do |key, value|
      empty_hash[key] = value.sort
      #binding.pry
    end
    empty_hash
  end
end