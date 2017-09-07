class School

attr_reader :name
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster.values_at(grade).flatten
  end

  def sort
    roster.each {|grade, name| name.sort!}
  end

end
