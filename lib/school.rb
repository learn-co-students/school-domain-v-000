class School

  ROSTER = {}

  def initialize(school)
    @school = school
  end

  def roster
    ROSTER
  end

  def add_student(name, grade)
    if ROSTER.include?(grade) && !ROSTER[grade].include?(name)
      ROSTER[grade] << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end

  def grade(grade)
    ROSTER[grade]
  end


  def sort
   ROSTER.each do |grade, names|
     ROSTER[grade] = names.sort
   end
 end

end
