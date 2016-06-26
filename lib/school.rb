# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, age)
    if !@roster.keys.include?(age)
        @roster[age] = []
    end
    @roster[age] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
      new_hash = {}
      new_array = []
      @roster.each do |k, v|
        new_hash[k] = v.sort
      end
      new_hash
    end

  def roster
    @roster
  end

  attr_reader :name

end

school = School.new("Bayside High School")
