class School
  attr_accessor :roster, :name
  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
    else roster[grade] = [name]
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    roster.each {|grade, students| students.sort!}
    roster
  end

end
# code here!
