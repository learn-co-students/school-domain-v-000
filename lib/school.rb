# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
      @roster[grade] << name
  end
  def grade(num)
    return @roster[num]
  end
  def sort
    @roster.each do |grades, names|
      puts "#{grades}:"
      names.sort!
      puts "#{names}"
    end
  end
end
