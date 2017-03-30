# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end



  def add_student(key, value)
    if @roster.has_key? value

    else
      @roster[value] = []

    end
    @roster[value] << key
  end



  attr_reader :name, :roster

  def grade(widget)
    return @roster[widget]

  end

  def sort
    @roster.each do |key, value|
      new_array = []
      new_array = @roster[key].sort
      @roster[key] = new_array
    end
    return @roster
  end

end
