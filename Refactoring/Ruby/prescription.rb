Prescription = Data.define(:dispense_date, :days_supply) do
  def days_taken = (dispense_date...completion_date).to_a
  def completion_date = dispense_date + days_supply
end
