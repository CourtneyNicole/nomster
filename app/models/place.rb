class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 4}
  validates :address, presence: true
  validates :description, presence: true

  has_many :comments
  has_many :photos


  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
end
