# code here!
class School

  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name,grade_num)
    @roster[grade_num] ||= @roster[grade_num]=[]
    @roster[grade_num] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each_value {|student_list| student_list.sort!}
  end
end