# code here!
class School
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(num)
    @roster[num]
  end

  def add_student(student, grade)
    @grade = grade
    @student = student

    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def sort
    sorted = {}

    @roster.keys.each do |num|
      sorted_names = @roster[num].sort
      sorted[num] = sorted_names
    end

    sorted.sort.to_h

  end
end
