require 'pry'
class School
  attr_reader :name, :roster
   def initialize(name,roster = {})
     @name = name
     @roster = roster
   end
   def add_student(key,value)
     if !roster[value].instance_of? Array
       roster[value] = []
     end
       roster[value] << key
     end
    def grade(number)
      roster[number]
    end
    def sort
    sorted_hash = Hash[roster.sort]
    roster.each{|key,value| sorted_hash[key] = value.sort}
    sorted_hash
    end
end

school = School.new("Bayside High School")
school.roster
