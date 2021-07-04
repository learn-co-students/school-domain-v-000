class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    # ^--- if left side of "||=" is undefined, evaluate right side & set left side to the result - otherwise do nothing
    @roster[grade] << student_name

    # if @roster[grade] == nil
    #   @roster[grade] = [student_name]
    # else
    #   @roster[grade] << student_name
    # end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |key, value_names|
      @roster[key].sort!
    end
    return @roster
  end

end
