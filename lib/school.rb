# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|h, k| h[k] = []} # has empty roster when initialized
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    # if self.roster[grade] already exists leave it alone!
    # else set self.roster[grade] = []
    #self.roster[grade] ||= []
    self.roster[grade] << name # is able to add multiple students to a class (grade)
    #else
      #@roster[grade] = [name] # is able to add a student
    #end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      students.sort!
    end

  end
end
