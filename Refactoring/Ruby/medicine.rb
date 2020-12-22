class Medicine
  attr_reader :name, :prescriptions

  def initialize(name)
    @name = name
    @prescriptions = []
  end

  def dates_prescribed_in_effective_range(day_count)
    days_taken.select do |d|
      (Date.today - day_count...Date.today).include?(d)
    end
  end

  def days_taken
    prescriptions.map(&:days_taken).flatten.uniq
  end
end
