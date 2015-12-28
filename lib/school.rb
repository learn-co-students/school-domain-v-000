class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    self.roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end