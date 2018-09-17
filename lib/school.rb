# code here!
class school
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
end