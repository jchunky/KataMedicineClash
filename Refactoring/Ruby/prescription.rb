class Prescription
  attr_reader :dispense_date, :days_supply

  def initialize(dispense_date:, days_supply:)
    @dispense_date = dispense_date
    @days_supply = days_supply
  end

  def <=>(other)
    dispense_date <=> other.dispense_date
  end

  def days_taken      = (dispense_date...completion_date).to_a
  def completion_date = dispense_date + days_supply
end
