class Number < ApplicationRecord
  def self.result(weight, parsent)
    weight * parsent / 100
  end
end
