class School

  
  attr_accessor :name, :grade
  attr_reader :roster 

  
  def initialize(roster)
    @roster = {}
     
  end

  def add_student
    @roster << self
  end

end