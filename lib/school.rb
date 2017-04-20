class School
  attr_reader :name,:roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student,grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << student
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
    @roster
  end

end
