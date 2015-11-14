# code here!
class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade_lvl)
    if @roster.key?(grade_lvl)
      @roster[grade_lvl] << name
    else
      @roster[grade_lvl] = []
      roster[grade_lvl] << name
    end
  end

  def grade(grade_lvl)
    @roster[grade_lvl]
  end

  def sort
    @roster.each{|k,v| v.sort!}
  end
  
end
