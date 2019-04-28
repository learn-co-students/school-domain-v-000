class School
attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
    #BRANDS << brand if !BRANDS.include?(brand)
  end

  def add_student(name, age)
    @roster[age] = [] if !@roster[age]
    @roster[age] << name
  end

  def grade(age)
    @roster[age]
  end

  def sort
    @roster.each {|age, students| students.sort!}
  end

end
