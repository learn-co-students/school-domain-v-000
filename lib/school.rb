class School
  attr_accessor :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end


  def add_student(name, grade)
    if @roster[grade] = nil
      @roster[grade] = [name]
    else
      @roster[geade] << [name]
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end
end
