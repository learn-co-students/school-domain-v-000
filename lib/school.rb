class School
  attr_reader :name, :roster, :grade
  def initialize(name, roster={})
    @name=name
    @roster=roster
  end
  def add_student(name,grade)
    roster[grade] ||= []
    roster[grade]<<name
  end
  def grade(grade)
    roster[grade]
  end
  def sort
   sorted = {}
   roster.each do |grade, students|
     sorted[grade] = students.sort
   end
   sorted

 end

end
