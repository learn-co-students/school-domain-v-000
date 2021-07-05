class School
  attr_accessor :roster, :grade
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grade)
    if !roster[grade]
      roster[grade] = []
    end
    roster[grade] << student
  end

def grade(grade)
  return roster[grade]
  end

def sort
  new_hash = {}
roster.each do |grade,students|
  new_hash[grade] = students.sort
end
return new_hash
end

end
