

class School

  def initialize(name)
    @roster = {}
    @name = name

  end

  def roster
    @roster
  end
  

  def add_student(student_name, grade)
    #grade is key, student_name goes into array
    #@roster = {9 => ["Zach Morris", "AC Slater"]}
    if @roster.include?(grade)
      @roster[grade] << student_name 

    else 
      @roster[grade] = []
      @roster[grade] << student_name 
     end
  end

  def grade(grade)
    @roster[grade]

  end

  def sort
    @roster.each do |k, v|
      v.sort!
    end

 
  end
 

end