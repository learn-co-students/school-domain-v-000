require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    # binding.pry
    if !(@roster.has_key?(grade))
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @sorted_roster = {}
    @roster.keys.sort.each do |grade_key|
      @sorted_roster[grade_key] = []
      # binding.pry
      @roster.each do |grade_num, students_array|
        if grade_num == grade_key
          students_array.sort.each do |student_name|
            @sorted_roster[grade_key] << student_name
          end
        end
      end
    end

    @sorted_roster
    # @roster.values.sort.each do |grade_key|
    #   @sorted_roster[grade_key] = []
    # end
    # @sorted_roster.each do |grade_key, students|
    #   if @sorted_roster[grade_key] == @roster[grade]
    #     @sorted_roster[grade_key] << @roster[grade]
    #     @sorted_roster[grade_key].sort
    #   end
    # end
  end

end
