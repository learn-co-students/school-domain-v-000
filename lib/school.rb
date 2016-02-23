class School

  
  attr_accessor :name, :grade
  attr_reader :roster 

  
  def initialize(school)
    @roster = {}
     
  end

  def add_student(name, grade)
    @roster.each do |name, grade|
      grade.each do |g|
        if g == :grade
          @roster[:grade] << name
        else
          @roster[grade] = []
          @roster[grade] << name
        end
      end
    end
  end

  def grade(grade)
  end

  def sort
    @roster.sort()
  end

end