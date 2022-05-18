class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy

  RESTAURANT_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: RESTAURANT_CATEGORIES }
end
