# code here!
class School

  attr_reader :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student (student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    @sorted = {}
    @roster.each_pair { |grade, student_array| @sorted[grade] = student_array.sort }
    Hash[@sorted.sort]
  end
end