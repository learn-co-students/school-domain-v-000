# code here!
class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    self.roster = {}
  end

  def add_student(student_name, grade)
    # first solution
    #if @roster.key?(grade)
    #  @roster[grade] << student_name
    #else
    #  @roster[grade] = [student_name]
    #end

    #revised solution
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, names| names.sort!}
  end

end
