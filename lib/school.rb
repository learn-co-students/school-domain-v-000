class School
 attr_reader :roster, :school
  
  def initialize(school)
    @school = school
    @roster = {}
  end 
  
  def add_student(student, grade)
   if @roster.keys.include?(grade)
     @roster[grade] << student
   else 
     @roster[grade] = []
     @roster[grade] << student
   end 
  end 
  
  def grade(grade_level)
    @roster[grade_level]
  end 
  
  def sort
    new_hash = {}
    @roster.each do |key, value| 
      new_hash[key] = value.sort
    end 
    new_hash 
  end 
end 