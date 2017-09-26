class School
  attr_accessor :grade
  attr_reader :name, :roster

  def initialize(name)
    roster = {}
    @name = name
    @roster = roster
  end

  def add_student(name, grade)

    if roster.has_key?(grade) == false #if roster hash does not have key matching value of grade variable
      roster[grade] = [] # create new grade key and point it to an empty array
      roster[grade] << name # push the new "name" to the array
    else
      roster[grade] << name # push the new "name" to the array of the existing key without creating a new key
    end

  end

  def grade (grade)
    roster.values_at(grade).flatten
  end

  def sort
    roster_sorted = Hash[roster.sort_by{|key,val| key}] #create new hash roster hash sorted by keys

    roster_sorted.each do |key,value|
      value.sort!
    end

  end

end # end of school class
