class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade)
      if roster[grade] == nil
      roster[grade] = Array.new << name
    else
      roster[grade] << name
    end
  end


  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |kev, value|
      value = value.sort!
    end
  end

end
