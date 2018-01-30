class School

  def initialize(name)
    @name = name
    @roster= {}
  end

  def roster
    @roster
  end

  def add_student (name, grade)
    #if the grade is already stored as a key, add the name value to that grade key.
    #otherwise make a new key value pair.
    if @roster.has_key?(grade)
        @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      students.sort!
    end
  end
end
