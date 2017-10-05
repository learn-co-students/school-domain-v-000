class School

attr_reader :name, :roster #able to read school name and roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade]    #if key grade doesn't exist
      @roster[grade] = [] #create key with empty array
    end
      @roster[grade] << name
=begin    ------------------ code above is better
    if roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
=end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, student|
      student.sort! #! band method that modify object being called on
    end
    @roster
  end
end
