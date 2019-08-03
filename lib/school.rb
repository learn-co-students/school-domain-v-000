# code here!
class School

attr_reader :school_name, :roster

  def initialize(school_name)
   @school_name = school_name
   @roster = {}
  end

  def add_student(name, grade)
    @roster[grade]||= []      #ONLY IF @roster[grade] is undefined/nil/false, assign it to []
    @roster[grade] << name    #then add name into the hash
    @roster                   #return the roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, student|
      student.sort!
      }
    @roster
  end


end
