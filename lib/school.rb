class School
  attr_assessor :roster, :name:
  
  def initialize(name)
    @name = name
    @roster= {}
  end
end