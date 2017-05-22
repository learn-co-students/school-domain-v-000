# code here!
class School
attr_accessor :school_name, :roster

  def initialize(name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.empty? || @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |students| students.sort!}
  end
end
