class Book < ApplicationRecord
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :author, presence: true
  validates :genre, presence: true
end
