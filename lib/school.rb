class School
  attr_accessor :school, :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(student_name, grade_number)
    @roster[grade_number] == nil ? (@roster[grade_number] = [student_name]) : (@roster[grade_number].push(student_name))
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    sorted_roster = {}
    @roster.each{|grade_number, students|
      sorted_roster[grade_number] = students.sort
    }
    @roster = sorted_roster
  end
end