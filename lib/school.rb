class School
    def initialize(school_name)
        @name = school_name
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
        @roster[num]
    end

    def sort
        sorted_hash = {}
        @roster.each{ |grade, names|
            sorted_hash[grade] = names.sort
        }
        sorted_hash
    end
end