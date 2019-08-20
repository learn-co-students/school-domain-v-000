class School

  attr_accessor :school_name, :school_roster

  def initialize (school_name)
    @school_name = school_name
    @school_roster = {}
  end

  def add_studentst(student, grade)
    school_roster[grade] ||= []
    school_roster[grade] << student
  end

  def grade(grade)
    roster[student]
  end

  def sort
    sort ={}
    roster.each do |grade, students|
      sorted[grade] = students.sort
  end
  sorted
  end
end
