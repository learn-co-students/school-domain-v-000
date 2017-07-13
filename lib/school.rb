class School
  attr_accessor :school_name, :roster



  def initialize(roster)
    @roster = {}
  end
  # added following to attr_writer instead
  # def roster=(roster)
  #   @roster = roster
  # end

  # def roster
  #   @roster = {}
  # end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.has_key?(@grade)
       @roster[@grade] << @student_name
    else
       @roster[@grade] = []
       @roster[@grade] << @student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    @roster.collect do |grade, students|
      @roster[grade] = @roster[grade].sort {|a, b| a <=> b}
    end
    @roster
  end

end
