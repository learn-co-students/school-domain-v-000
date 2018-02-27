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
     names.each do |name|
       if name[0][0] > name[1][0]
         name[0] <=> name[1]
       end
     end
   end
   sorted_roster = Hash[ROSTER.sort_by {|k, v| k}]
 end
end
