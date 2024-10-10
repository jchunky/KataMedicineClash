class Medicine < Struct.new(:name, :prescriptions)
  def initialize(name)
    super(name, [])
  end

  def days_taken
    prescriptions.flat_map(&:days_taken).uniq
  end
end
