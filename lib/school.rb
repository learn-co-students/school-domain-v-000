class School
attr_reader :name

  def initialized(school)
    @school = school
  end
@roster

  def roster(grade)
    roster =  Hash.new { |hash, key| hash[key] = grade }


end
