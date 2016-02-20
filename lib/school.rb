class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster 
  end

  def add_student(student_name, grade) 
     @student_name = student_name
     @grade = grade
     @roster[@grade] ||= []
     @roster[@grade] << @student_name
  end 

  def grade(grade)
    @roster[grade] 
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end  

end

# def sort
#     @roster.each do|std_class, student|
#       student.sort! do|a,b|
#         a<=>b
#       end
#     end
#   end


