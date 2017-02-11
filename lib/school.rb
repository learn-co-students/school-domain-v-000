# code here!
class School

attr_reader :name, :roster, :add_student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)

    if roster.include?(grade)
      roster[grade] << student

    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

  end
