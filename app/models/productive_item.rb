class ProductiveItem < ApplicationRecord
  def self.suggested(str)
    where("body ILIKE ?", "%#{str}%")
  end
end
