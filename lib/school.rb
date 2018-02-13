# code here!

class School

      def initialize(name_of_school)
            @name_of_school = name_of_school
            @roster = {}
      end

      def roster
            @roster
      end

      def add_student(student_name, student_grade)
            if @roster[student_grade]
                  @roster[student_grade] << student_name
            else
                  @roster[student_grade] = []
                  @roster[student_grade] << student_name
            end
      end

      def grade(student_grade)
             @roster[student_grade]
      end

      def sort

            @roster.each do |key, value|
                  value.sort!

          end
      end


end
