class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
      if @roster.key?(grade) == false
        @roster[grade] = []
        @roster[grade] << name
      else
        @roster[grade] << name
      end
  end

  def grade(grade)
    @roster[grade]
  end

  def sorted
    @roster.collect do |grade, students|
      students.sort
    end
    @roster
  end

end

nkhs = School.new("NKHS")
nkhs.add_student("Homer Simpson", 9)
nkhs.add_student("Bart Simpson", 9)
nkhs.add_student("Avi Flombaum", 10)
nkhs.add_student("Jeff Baird", 10)
nkhs.add_student("Blake Johnson", 7)
nkhs.add_student("Jack Bauer", 7)


test_output_hash = {9=>["Homer Simpson", "Bart Simpson"], 10=>["Avi Flombaum", "Jeff Baird"], 7=>["Blake Johnson", "Jack Bauer"]}
test_output_values = test_output_hash.values
puts "#{test_output_values}"
sorted_output_values = test_output_values.collect {|values| values.sort}
puts"#{sorted_output_values}"
