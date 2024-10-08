class Patient
  attr_reader :medicines

  def initialize
    @medicines = []
  end

  def clash(medicine_names, days_back)
    medicines
      .select { |medicine| medicine_names.include?(medicine.name) }
      .map { |medicine| medicine.dates_prescribed_in_effective_range(days_back) }
      .reduce(&:&)
  end
end
