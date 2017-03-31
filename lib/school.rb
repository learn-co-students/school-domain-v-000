class School
  attr_reader :roster
  
  def initialize(name)
    @roster={}
  end

  def add_student(name,grade)
    @roster[grade]=[] if !@roster.has_key?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade,class_arr|
      roster[grade]=class_arr.sort
    }
  end
end
