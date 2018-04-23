# code here!
class School

 def initialize(school)
   @school = school
   @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names_array|
      @roster[grade] = names_array.sort {|a, b| a<=>b}
    end
  end

end
