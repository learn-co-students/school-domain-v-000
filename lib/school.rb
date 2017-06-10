class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] =[]
      @roster[grade] << student_name
    end
  end

  def grade(grade_key)
    @roster[grade_key]
  end

  def sort
    sorted_roster = {}
    @roster.each {|grade, students|
      sorted_roster[grade] = students.sort
    }
    sorted_roster
  end
end
