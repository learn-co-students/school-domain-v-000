class School
  attr_reader :roster

  def initialize(roster)
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    students_in_grade = []

    roster.collect do |key, value|
      if key == grade
        students_in_grade += value
      end
    end
    students_in_grade
  end

  def sort
    roster.each do |key, value|
      @roster[key] = value.sort
    end
  end

end
