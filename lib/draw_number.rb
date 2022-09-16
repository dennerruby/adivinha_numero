require "securerandom"

class DrawNumber
  def self.draw
    v = []
    v << SecureRandom.random_number(20)
    v.sample
  end
end
