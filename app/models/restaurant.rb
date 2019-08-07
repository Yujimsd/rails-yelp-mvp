class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  RNG = (1..5).to_a
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true , exclusion: {in: ["neptunian"]}


end
