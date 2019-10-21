# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name,grade)
    if not @roster.key? grade
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_key { |key| @roster[key].sort!}
    @roster
  end
  
end
