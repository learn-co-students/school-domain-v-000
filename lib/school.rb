# code here!

class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def school
    @school
  end

  def roster
    @roster
  end

  def add_student(name, grade)
      @roster[grade] ||= []
      @roster[grade] << name
      @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end




