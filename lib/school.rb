# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end

  end

  def grade(g)
    @roster[g]
  end

  def sort
    @roster.each {|k,v| @roster[k].sort!}
  end
end
