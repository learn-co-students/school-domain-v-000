# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)

      @name = name
      @roster = {}
  end
def roster
    @roster
  end
  def add_student(val,key)
    if @roster.include?(key)
      @roster[key] << val
    else
      @roster[key] = []
      @roster[key] << val
    end
end

def grade(num)
  @roster[num]

end

  def sort
    key_array = @roster.keys.sort
    key_array.collect do |num|
      @roster[num] = @roster[num].sort
    end
    @roster
  end

end
