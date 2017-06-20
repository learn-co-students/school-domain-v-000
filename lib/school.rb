class School

  attr_reader :roster

  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(student, grade)
    #check if the grade exists
    #if it does not, add it and then add the student
    if !@roster.keys.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(num)
    @roster[num]
  end

  def sort
    #iterate over the hash and sort each array
    @roster.each {|k,v| @roster[k] = v.sort!}
  end

end
