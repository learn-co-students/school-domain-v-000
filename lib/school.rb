class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << student
  end

  def grade(num)
    @roster[num]
  end

  def sort
    #@roster
    @roster.each do |key, value|
      value.sort!
    end
  end
end
