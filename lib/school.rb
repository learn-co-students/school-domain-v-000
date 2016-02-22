class School

  
  attr_accessor :grade
  attr_reader :name

  
  def initialize(roster)
    @roster = {}
     
  end

  def add_student
    @roster << self
  end

end