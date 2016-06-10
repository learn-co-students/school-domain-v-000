class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(student_name, grade)
    if @roster.include?(grade)
      roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade,student_name| student_name.sort!}
  end


end #end class (School)