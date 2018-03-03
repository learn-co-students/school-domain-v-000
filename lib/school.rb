
class School
attr_accessor :roster, :student, :grade, :name




  def initialize(name)
  @name = name
  @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |v| v.sort! }
  end

end
