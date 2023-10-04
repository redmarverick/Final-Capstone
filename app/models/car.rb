class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
  validates :price, presence: true
end
