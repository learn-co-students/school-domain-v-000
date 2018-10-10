class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.include?(@grade)
      @roster[@grade] << @name
    else
      @roster[@grade] = []
      @roster[@grade] << @name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each {|grade, name_array| name_array.sort!}
  end
  
  def print_roster
    puts "Roster:"
    @roster.each do |grade, name_array|
      puts grade
      names_on_one_line = []
      name_array.each do |name|
        names_on_one_line << name
      end
      puts "  #{names_on_one_line.join(', ')}"
    end
  end
end





