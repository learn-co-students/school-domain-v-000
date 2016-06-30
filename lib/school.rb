class School
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end


  def add_student(name, grade)
    roster[grade] = [] if !roster.keys.include?(grade)
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
end

def sort
   roster.each do |key, value|
     value.sort!
   end
 end
end
