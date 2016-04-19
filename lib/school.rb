class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def name
    @name
  end

  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |key, value|
      value.sort!
    end
    @roster
  end

end