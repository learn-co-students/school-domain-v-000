# code here!
class School

  attr_writer :add_student
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] =[] unless @roster.include?(grade)
    @roster[grade] << student
  end

  def grade(grade)
    return @roster.values_at(grade).flatten
  end

  def sort
    @roster.each do |keys,values|
      values.sort!
    end
    
  end

end
