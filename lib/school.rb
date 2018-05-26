# code here!
class School
attr_accessor :name, :roster, :grade


 def initialize(name)
   @name = name
   @roster = {}
end

def add_student(student, grade)
 if roster.has_key?(grade) != true
  roster[grade] = []
  roster[grade] << student
else
  roster[grade] << student
end
roster
  end
  def grade(grade_year)
    @roster.fetch(grade_year)
    end
    
    def sort 
      roster.each { |key, value| value.sort! }
    end
end