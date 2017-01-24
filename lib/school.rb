class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = @roster
    sorted_roster.each {|grade, name| sorted_roster[grade].sort!}
  end

end
