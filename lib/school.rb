class School
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(grade)
    @roster[grade]
  end

  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def sort
    @roster.each do |grade,array|
      array.sort!
    end
  end

end
