# code here!
class School

	attr_accessor :roster, :name

    def initialize(name)
        @name=name
        @roster= {}
    end

    def add_student(student, age)
        if !@roster.keys.include?(age)
            @roster[age]=[]
        end
       @roster[age]<<student
    end

    def grade(grade)
        @roster[grade]
    end

	def sort

		@roster.each do |key, val|
			@roster[key]=val.sort
		end
		@roster
	end

end
