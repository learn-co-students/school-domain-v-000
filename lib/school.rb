class School

 #attr_accessor :student 
 attr_reader :name, :roster

  def initialize(name)
    @name = name
    if SCHOOL_NAMES.include?(name) == false
      SCHOOL_NAMES << name
    end
    @roster = {}
  end
 
 SCHOOL_NAMES = []

  #def roster=(grade,student_name)
    #roster[grade]<<
  #end
 
  def add_student(student_name, grade)
    if @roster[grade] == nil
       @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each_value do |value| 
      value.sort!
    end
    return @roster
  end

end

