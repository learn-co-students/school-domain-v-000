# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(name, index)
    @roster[index]=[] if !@roster.include?(index)
    @roster[index]<<name
  end

  def grade(arg)
    @roster[arg]
  end

  def sort
    @roster.sort.to_h.each  do |index, value|
        @roster[index]=[]+value.sort
    end
    @roster
  end

end
