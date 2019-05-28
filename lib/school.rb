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
    puts @roster[grade]
    if @roster.has_key?(grade)
      puts "key present"
      @roster[grade] << name     # Need bracket for the first element for update bracket is not required
    else
      puts "key not present"
      @roster[grade] = []
      @roster[grade] << name   # Need bracket for the first element
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

def sort
  @roster.sort_by(&:first).map { |k, v| [k, v.sort]}.to_h
end
end

school = School.new("New School")
school.add_student("aaa", 9)
