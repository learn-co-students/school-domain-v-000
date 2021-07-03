# code here!
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster[grade].nil?
      roster[grade] = []
      roster[grade] << student_name
    else
      roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade].flatten
  end

  def sort
    sorted_roster = {}
    #@roster.keys.sort.each {|grade| sorted_roster[grade] = @roster[grade].sort}
    @roster.keys.each  {|grade| sorted_roster[grade] = @roster[grade].sort}
    sorted_roster
  end

end
