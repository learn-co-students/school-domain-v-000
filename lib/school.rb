# code here!
'pry'
class School

def initialize(school)
  @school = school
  @roster = {}
end

def roster
  @roster
end

def add_student(student, grade)
@roster[grade] = [] unless @roster.key?(grade)
@roster[grade] << (student)
end


def grade(num)
    output = nil
    @roster.each do |k,v|
    if k == num.to_i
     output = v
    end
  end
  output
end

#sort_by
#def sort(roster)
 # sorted = roster[:keys][:values].sort.to_h
 # sorted
#end

#each


def sort
sorted = {}
@roster.each do |k,v|
sorted[k] = [] unless sorted.key?(k)
  (sorted[k]<<v.sort).flatten!
end
sorted
end

end







