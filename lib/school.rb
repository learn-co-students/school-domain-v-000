# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}

  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster[grade]
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
    @roster.each do|std_class, student|
      student.sort! do|a,b|
        a<=>b
      end
    end
  end
end