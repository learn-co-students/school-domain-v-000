class School
  attr_accessor :schoolname, :roster

     def initialize(schoolname)
         @schoolname = schoolname
         @roster = {}
     end

      

       def add_student(studentname, grade)
            if @roster.include?(grade)
              @roster[grade] <<  studentname
            else
              @roster[grade] = []
              @roster[grade] <<  studentname
            end
          end

        def grade(grade)
          @roster[grade]
        end

        def sort
          sorted={}
          @roster.each {|grade, studentarray|
               sorted[grade]= studentarray.sort
             }
               sorted
        end


end
