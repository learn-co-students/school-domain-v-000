# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(name, grade)
    if @roster.keys.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def roster
    @roster
  end

  def sort

    # @roster.sort.to_h
    @roster.each do |grade, students|
      students.sort!
    end
    @roster.sort.to_h
  end

end