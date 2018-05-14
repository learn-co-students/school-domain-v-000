class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(students_name, grade)
    if @roster[grade]
      @roster[grade] << students_name
    else
      @roster[grade] ||= [students_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, student_array|
      sorted_roster[grade] = student_array.sort
    end
    sorted_roster
  end

end
