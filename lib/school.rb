class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if(!@roster[grade])
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(n)
    @roster[n]
  end

  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end

end
