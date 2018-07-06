class School

  attr_reader :roster

  def initialize(school)
    @roster = {}
    @school = school
  end

  def add_student(name, grade)
    if !(@roster.keys.include?(grade))
      @roster[grade]=[]
      @roster[grade]<<name
    else
      @roster[grade]<<name
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.collect do |key, value|
      @roster[key].sort!
    end
    @roster
  end

end
