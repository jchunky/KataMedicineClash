class Patient
  attr_reader :medicines

  def initialize
    @medicines = []
  end

  def clash(medicine_names, days_back)
    medicines
      .select { |medicine| medicine_names.include?(medicine.name) }
      .map(&:days_taken)
      .reduce(&:&)
      .select do |d|
        (Date.today - days_back...Date.today).include?(d)
      end
  end
end
