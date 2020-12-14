class Prescription
  attr_reader :dispense_date, :days_supply

  def initialize(options)
    @dispense_date = options.fetch(:dispense_date)
    @days_supply = options.fetch(:days_supply)
  end

  def days_taken
    (dispense_date...completion_date).to_a
  end

  def completion_date
    dispense_date + days_supply
  end
end
