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

  def from_now
    Date.today + self
  end
end

class Date
  def advance(opts)
    self + opts.fetch(:days)
  end
end
