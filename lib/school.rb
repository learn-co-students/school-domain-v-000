class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade].push(student)
    else
      @roster[grade]=[student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort.map do |k,v|
      @roster[k]=v.sort
    end
    @roster
  end
end
