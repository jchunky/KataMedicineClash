class Medicine < Struct.new(:name, :prescriptions)
  def initialize(name)
    super(name, [])
  end

  def dates_prescribed_in_effective_range(day_count)
    days_taken.select do |d|
      (Date.today - day_count...Date.today).include?(d)
    end
  end

  def days_taken
    prescriptions.flat_map(&:days_taken).uniq
  end
end
