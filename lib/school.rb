class School

attr_writer :roster, :add_student, :grade


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end


  end

end
