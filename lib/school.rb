# code here!
class School
attr_accessor :name, :roster
  def initialize(name)
     @name = name
     @roster = {}

   end

   def add_student(name, grade)


     @roster[grade] ||= []
     @roster[grade] << name

   end


 def grade(grade)

@roster[grade]



end

def sort
  # {10: ['jon', 'sally'], 11: ['bob', 'frank'], 12: ['susan', 'mary']}
  # iterating |key, value|
  # the key is 10 and hte value is ['sally', 'jon']
  # newhash[10] = values array sorted

    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort{|a, b| a <=> b}
    end

    sorted_roster

end

end
