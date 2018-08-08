# code here!
class School

attr_reader :name

def initialize(name)
    @name = name
end

def roster
  roster = {}
end

def add_student(name, grade)

  roster[grade] ||= []
  roster[grade] << name

end



def sort
  new_hash = {}
  roster.each do |grade, students|
    new_hash[grade] = values.sort
  end
  new_hash
end


end
