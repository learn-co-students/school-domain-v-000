class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name, :roster

  def add_student(name,grade)
    if @roster.include?(grade)
      @roster[grade]<<name
    else
      @roster[grade] = []
      @roster[grade]<<name
    end
  end

  def grade(grade)
    #return all of the students in that grade
    @roster[grade]
  end

  def sort()
    return_hash = {}
    @roster.each do |key,value|
      return_hash[key] = value.sort
    end
    return_hash
  end



end
