class School
    def initialize(school_name)
        @school = school_name
        @roster = {}
    end
    def roster
        @roster
    end

    def add_student(name, grade)
        #given grade, look to see if has a key of grade
            #if yes,
                #shovel into array
            #if no,
                #point grade to newly created empty array, shovel in name
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(num)
        final_array = []
        @roster.each{ |grade, names|
            if grade == num
                names.each{ |name|
                    final_array << name
                }
            end
        }
        final_array
    end

    def sort
        @roster.each{ |grade, names|
            names.sort!
        }
    end
end