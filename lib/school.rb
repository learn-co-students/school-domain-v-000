# code here!
class School
  
 attr_accessor :name
  
  def initialize(name, roster)
    @name = name
    @roster = Array.new
  end

  def roster
    @roster
  end

end