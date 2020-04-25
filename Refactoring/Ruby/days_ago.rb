require "date"

class Integer
  def day
    self
  end

  def days
    self
  end

  def ago
    Date.today - self
  end
end
