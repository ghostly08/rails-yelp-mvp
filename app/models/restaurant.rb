class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy #reviews are dependent of the restaurant.

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
