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
      .push(date_range.to_a)
      .reduce(&:&)
  end
end
