class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
   if !@roster.include?(grade)
      @roster[grade] = []
    end
      @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|_, v| v.sort!}
  end

end

# Got stuck big time here, had to Google