class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.any? {|k| k == grade}
     @roster[grade] << name
  else
     @roster[grade] = []
     @roster[grade] << name
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
     @roster.each {|key, value| value.sort}
   end
end
