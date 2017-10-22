# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade]= []
      @roster[grade] << name
    end
  end

  def grade(grade)
    if @roster.keys.include?(grade)
      @roster[grade]
    else
      puts "No students found in the grade"
    end
  end

  def sort
    array = @roster.sort
    @roster = {}
    array.each do |grade|
      @roster[grade[0]]=grade[1].sort
    end
    @roster
  end

end
