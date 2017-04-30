# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(letter)
     @roster[letter]
  end

  def sort
    sorted_list = {}
    @roster.each do |grade, name|
      sorted_list[grade] = name.sort
    end
    sorted_list
  end
end
