
class School
            attr_reader :name, :roster, :add_student

    def initialize(name)
       @name = name
       @roster = {}
    end

    def add_student(student_name,student_grade)
        @student_name = student_name
        @student_grade = student_grade

        @roster[@student_grade] ||= []
        @roster[@student_grade] << student_name
    end

  def grade(grade)
           @grade = grade
           @roster[@grade]

        end

    def sort
       new_hash = {}
      roster.each do |level, name|
        new_hash[level] = name.sort
      end
      new_hash
    end

end

