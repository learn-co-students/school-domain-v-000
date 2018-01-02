class School
  attr_accessor :roster, :grade
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    !roster.include?(grade) ? roster[grade] = [] : false
    roster[grade] << name
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    roster.each {|grade, name| name.sort!}
  end

end
