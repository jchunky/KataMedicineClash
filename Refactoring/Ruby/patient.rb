class Patient < Struct.new(:medicines)
  def initialize
    super([])
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
