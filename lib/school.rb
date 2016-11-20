# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key? grade
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade) #take in an argument of a grade and return all of the students in that grade
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
     @roster[grade] = name.sort
    end
  end
end
