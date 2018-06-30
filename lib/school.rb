class School
    attr_accessor
    attr_reader :school_name

    def initialize(school_name)
      @school_name = school_name
      @school_name = {}
    end

    def add_student(student_name, grade)
      if @school_name.keys.any?{|x| x == grade.to_i} == true
        @school_name[grade.to_i] << student_name
      else
        @school_name[grade.to_i] = []
        @school_name[grade.to_i] << student_name
      end
    end

    def roster
      @school_name
    end

    def grade(num)
      @school_name[num]
    end

    def sort
      @school_name.each do |grade, data|
        data.sort!
      end
    end

end
