class Review < ApplicationRecord
  belongs_to :restaurant

  RNG = (0..5).to_a
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RNG }

end
