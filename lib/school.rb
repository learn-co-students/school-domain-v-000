# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade]=[] unless @roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster={}
    @roster.each do |grade, students|
      sorted_roster[grade]=students.sort
    end
    sorted_roster
  end

end