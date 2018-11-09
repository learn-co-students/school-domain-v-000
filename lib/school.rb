#1 create class School that can be initialized with a name (??)
class School
  attr_accessor :roster, :school_name
  #@@all = []

#2 roster = empty hash at initialize
#    will be built out to contain keys of grade levels & values will be array of student names.
  def initialize(school_name)
    @roster = {}
    @school_name = school_name

    # @@all << self
  end

#3  add data to roster hash
# {grade => ["student name", "student name2"]}
  def add_student(name, grade)
    # if grade key not yet in roster
    # create it with empty name values array
    roster[grade] ||= roster[grade] = []
    # then, shovel new name value into grade key
    roster[grade] << name
  end

#4  retrieve all students in grade called as argument
	def grade(grade)
    roster[grade]
	end

#5 Sort student names within each grade
#  return new hash with names sorted
  def sort
		roster_sort = {}
    	roster.each do |grade, names|
				roster_sort[grade] = names.sort
			end
		roster_sort
  end

# class end below
end

laguardia = School.new("LaGuardia")
bronx_science = School.new("Bronx Science")
stuyvesant = School.new("Stuyvesant")
laguardia.add_student("xavier", 11)
laguardia.add_student("chris", 11)
laguardia.add_student("jane", 10)
laguardia.add_student("bob", 10)
bronx_science.add_student("Homer Simpson", 9)
bronx_science.add_student("Jeff Baird", 10)
bronx_science.add_student("Avi Flombaum", 10)
bronx_science.add_student("Blake Johnson", 7)
bronx_science.add_student("Bart Simpson", 9)
