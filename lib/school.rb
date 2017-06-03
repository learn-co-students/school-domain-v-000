# code here!

class School
  ARRAY = []
  def initialize(name)
    @name = name
    @roster = {}
  end

def roster
  @roster
end

def add_student(student, grade)
  if @roster.keys.include?(grade)
    @roster[grade] << student
  else
    @roster[grade] = []
    @roster[grade] << student
  end
end

  def grade(grade)
    @grade = @roster[grade]
  end

  def sort
    @sort = @roster.each do |grade, students_array|
      @roster[grade].sort!
    end
  end



end
