class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :image_url, presence: true
  validates :brand, :model, :year, :fuel, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1886 }
end
