class School 

def initialize(school_name)
  @school_name = school_name
  @roster = {}
end

def roster
  @roster
end

def add_student(student, grade_level)
 
  if @roster.key?(grade_level)
    @roster[grade_level] << student
  else
    @roster[grade_level] = []
    @roster[grade_level] << student
  end
  
end 

def grade(grade_level)
  @roster.each do |grade_key, student_value|
    if grade_key == grade_level
      return @roster[grade_level] 
    end
  end 
end 

def sort
  
  i = 0 
  
  @roster.each do |grade_key, student_values|
      while i < student_values.length - 1
        if student_values[i] <= student_values[i+1]
            i+=1 
          else 
            temp = student_values[i]
            student_values[i] = student_values[i+1]
            student_values[i+1] = temp 
            i+=1 
        end
      end
  end 
end


end #CLASS END 





