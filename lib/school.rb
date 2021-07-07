# code here!
class School
attr_reader :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] != nil
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
    @roster
  end

  def grade(number)
    return @roster[number]
  end

  def sort
    @roster.each do |key, value|
       value.sort!
    end
  end
end
