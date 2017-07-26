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
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << "#{name}"
    else
      @roster[grade] << "#{name}"
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.each do |grade, list|
      @roster[grade] = list.sort
    end
    @roster

  end
end
