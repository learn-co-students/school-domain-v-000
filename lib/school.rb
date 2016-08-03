class School
  def initialize(name)
    @roster = {}
  end
  def roster
    @roster
  end


  def add_student(name, grade)
    roster[grade] ||=[]
    roster[grade].push(name)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |key, value|
    value.sort!
   end
   return roster
  end


end
