class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    #@roster[grade] = [] unless @roster.keys.include?(grade) #my
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(num)
    roster[num]
  end

  def sort
    #not editing the original hash - using another hash instead of the sort!
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
