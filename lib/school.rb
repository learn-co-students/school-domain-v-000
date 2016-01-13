class School
  attr_accessor :roster
  attr_reader :school


  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = Hash[@roster.sort.map { |key, value| [key, value.sort]}]
  end
end