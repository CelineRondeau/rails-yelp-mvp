class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
