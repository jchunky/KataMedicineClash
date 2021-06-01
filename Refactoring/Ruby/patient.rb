class Patient
  attr_reader :medicines

  def initialize
    @medicines = []
  end

  def clash(medicine_names, days_back)
    date_range = (Date.today - days_back...Date.today)

    medicines
      .select { |medicine| medicine_names.include?(medicine.name) }
      .map(&:days_taken)
      .reduce(&:&)
      .select { |date| date_range.include?(date) }
  end
end
