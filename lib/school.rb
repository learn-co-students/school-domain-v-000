class School

  attr_accessor :student
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade]=[name]
    end
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    @roster.each do |k, v|
      @roster[k]=v.sort
    end
  end

end
