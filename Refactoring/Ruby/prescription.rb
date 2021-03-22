class Prescription
  attr_reader :dispense_date, :days_supply

  def initialize(opts = {})
    @dispense_date = opts.fetch(:dispense_date)
    @days_supply = opts.fetch(:days_supply)
  end

  def days_taken
    (dispense_date...completion_date).to_a
  end

  def completion_date
    dispense_date + days_supply
  end
end
