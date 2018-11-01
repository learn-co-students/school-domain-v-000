class School

  attr_accessor :name, :grade, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade]  << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |g, n|
      n.sort!
    end
  end

end
