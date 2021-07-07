class School
  attr_accessor :roster, :name, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster.each do |key, value|
      if key == grade
          return value
      end
    end
  end

  def sort
    temp_arr = []
    @roster.each do |key, value|
      temp_arr = value.sort
      @roster[key] = temp_arr
    end
    @roster
  end
end
