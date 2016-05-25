class School

  def initialize(name)
    @name = name
    @roster_hash = {}
  end

  def roster
    @roster_hash
  end

  def add_student(student_name, student_grade)
    if @roster_hash[student_grade] == nil
      @roster_hash[student_grade] = []
      @roster_hash[student_grade] << student_name
    else
      @roster_hash[student_grade] << student_name
    end
  end

  def grade(student_grade)
    @roster_hash[student_grade]
  end

  def sort
    new_hash = Hash[@roster_hash.sort_by {|key, value| key}]

    final_hash = {}
    new_hash.each do |key, array|
      array.sort!
      puts array
    end

    

  end

end
