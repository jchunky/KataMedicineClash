require "date"

class Integer
  def day = self
  def days = self
  def ago = Date.today - self
  def from_now = Date.today + self
end
