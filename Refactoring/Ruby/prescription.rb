class Prescription < Struct.new(:dispense_date, :days_supply, keyword_init: true)
  def days_taken
    (dispense_date...completion_date).to_a
  end

  def completion_date
    dispense_date + days_supply
  end
end
