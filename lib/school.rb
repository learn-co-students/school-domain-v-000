class School

attr_reader :name, :grade

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      if @roster[grade] == nil
        @roster[grade] = []
      end
      @roster[grade] << name
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      temp_array =@roster.sort
      temp_hash = {}
      temp_array.each do |grade, name|
        name.sort.each do |names|
          if temp_hash[grade] == nil
            temp_hash[grade] = []
          end
          temp_hash[grade] << names
        end
      end

      @roster = temp_hash

    end

    def roster
      @roster
    end

end

temp_school = School.new("temp_school")

temp_school.add_student("Homer Simpson", 9)
temp_school.add_student("Bart Simpson", 9)
temp_school.add_student("Avi Flombaum", 10)
temp_school.add_student("Jeff Baird", 10)
temp_school.add_student("Blake Johnson", 7)
temp_school.add_student("Jack Bauer", 7)

temp_school.sort
