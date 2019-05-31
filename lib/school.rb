class School
  attr_accessor :name, :roster
  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(level)
    @roster.select do |grade, student|
      if grade == level
        return student
      end
    end
  end

  def sort
    new_hash={}
    @roster.each do |grade, name|
      new_hash[grade] = name.sort
    end
    new_hash
  end
end
