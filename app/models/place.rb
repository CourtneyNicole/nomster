class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 4}
  validates :address, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
end
