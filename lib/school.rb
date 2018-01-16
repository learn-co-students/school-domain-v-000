require 'pry'
class School
   attr_reader :roster, :name, :grade
   
   def initialize(name)
      @name = name
      @roster = {}
   end

   def add_student(name, grade)
      @name = name
      @grade = grade

      @roster[@grade] = [] unless @roster.has_key?(@grade)
      @roster[@grade] << @name

   end

   def grade(grade)
      @roster[grade]
   end

   def sort
      @roster.each do |k,v|
         @roster[k] = v.sort
      end

   end

end