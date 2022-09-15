require "securerandom"

class SortearNumero
  def self.sortear
    v = []
    v << SecureRandom.random_number(20)
    v.sample
  end
end
