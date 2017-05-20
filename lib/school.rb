class School
attr_accessor :school_name, :roster

  def initialize(name) #passing in the name of the SCHOOL and setting it = to Instance Var
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.empty? || @roster[grade] == nil #does the hash roster containe any values?  Or does the key exist in the hash?
      @roster[grade] = []  #create an array for the grade key
      @roster[grade] << student #push the student name into the array for that key
    else
      @roster[grade] << student  #the key exists so add additional name to array
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |students| students.sort!}
  end
end
