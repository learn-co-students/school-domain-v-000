class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.empty?
      @roster[grade] = []
      @roster[grade] << student
    elsif @roster.keys.include?(grade)
      @roster[grade] << student
    else @roster.keys.include?(grade) == false
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.each {|key, value| value.sort!}
  end

end

