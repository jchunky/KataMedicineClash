class Medicine
  attr_reader :name, :prescriptions

  def initialize(name)
    @name          = name
    @prescriptions = []
  end

  def days_taken = prescriptions.flat_map(&:days_taken).uniq
end
