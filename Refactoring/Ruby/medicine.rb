class Medicine
  attr_reader :name, :prescriptions

  def initialize(name)
    @name = name
    @prescriptions = []
  end

  def days_taken
    prescriptions.map(&:days_taken).flatten.uniq
  end
end
