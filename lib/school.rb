class School

  attr_accessor :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade) && !roster[grade].include?(name)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end


  def sort
   sorted = {}
   roster.each do |grade, names|
     sorted[grade] = names.sort
   end
   sorted
 end

end
