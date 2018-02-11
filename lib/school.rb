# code here!
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = []
  end

  # def roster
  #   @roster
  # end

  def add_student=(name)
    @name = name
  end

  # def student
  #   @student
  # end


  #   if @roster[grade] != nil
  #      @roster[grade] << name
  #   else
  #     @roster[grade] = [name]
  #   end
  # end
  #
  # def grade(grade)
  #   def grade(grade)
  # end
  #
  # def sort
  #   @roster.each do |key, value|
  #     value.sort!
  #   end
  # end
end
