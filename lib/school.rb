class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster

  def add_student(name,grade)
    if @roster.include?(grade)
      @roster[grade]<<name
    else
      @roster[grade] = []
      @roster[grade]<<name
    end
  end

  def grade(grade)
    #return all of the students in that grade
    @roster[grade]
  end

  def sort()
    @roster.each do |key,value|
      value.sort!
    end
    @roster
  end



end
