# code here!
class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if roster.length >= 1
      if @roster.keys.include?(grade)
        @roster[grade] << name
      else
        @roster[grade] = []
        @roster[grade] << name
      end
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students = students.sort!
    end
  end
end
