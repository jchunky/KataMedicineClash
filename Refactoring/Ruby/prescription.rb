class Prescription
  attr_reader :days_supply, :dispense_date

  def initialize(opts)
    @days_supply = opts.fetch(:days_supply)
    @dispense_date = opts.fetch(:dispense_date)
  end

  def days_taken
    (dispense_date...completion_date).to_a
  end

  def completion_date
    dispense_date + days_supply
  end
end
