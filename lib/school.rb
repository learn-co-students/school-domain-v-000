class School
  attr_accessor :roster
   
  def initialize(school)
    @school = school 
    @roster = {}
  end
  
   def add_student(name, grade)
     @roster[grade] ||= []
     @roster[grade] << name
   end
   
   def grade(grade)
      @roster[grade]
   end
   
   def sort
    @roster.each do |grade, names| names.sort!
    end
  end
  
end

