class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    return @roster
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
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
    return roster
  end
end
