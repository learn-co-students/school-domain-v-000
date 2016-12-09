# code here!
class School
<<<<<<< HEAD

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
=======
  attr_reader :name

  def initialize (name)
    @name = name
  end

  ROSTER = {}

  def roster
    ROSTER
  end

  def add_student (student, grade)
    if ROSTER.has_key?(grade)
      ROSTER[grade] << student
    else
      ROSTER[grade] = [student]
    end
  end

  def grade (grade)
    
  end

  def sort
    
>>>>>>> 70c1ed176edba63f9047a0ba131ecbd56c00911a
  end
end