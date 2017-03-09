# code here!

class School

      def initialize(name)
        @name = name
        @roster = {}
      end

    attr_accessor :name, :roster, :grade, :add_student, :sort


      def add_student(student, grade)
          @roster[grade] = [] unless roster.has_key?(grade)
          @roster[grade] << student
      end

      def grade(grade)
        @roster[grade]
      end

      def sort
        roster.map do |grade, student|
          student.sort!
          end
          roster
      end

end
