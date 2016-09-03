class School

attr_reader :new, :roster

roster = {}
roster.length(0)

  def initialize(new)
    @new = new
  end

  def roster=(roster)
    @roster = roster
  end


end
