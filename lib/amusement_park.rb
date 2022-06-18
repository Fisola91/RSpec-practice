class Attendee
  attr_reader :height, :pass_id
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end
end
