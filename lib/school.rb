class School
  attr_accessor :roster
  attr_reader :name, :grade

  def initialize(title)
    @title = title
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include? (grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k, v|
        v.sort!
    end
  end
    
end
