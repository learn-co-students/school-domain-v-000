# code here!
class School
  def initialize (name)
    @name=name
    @roster={}
  end
  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    if @roster.has_key?(grade)

   else
     @roster[grade]=[]
   end
    @roster[grade] << student_name
  end

  def grade(grade_input)
    return @roster[grade_input]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
