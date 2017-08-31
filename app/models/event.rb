class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_one :district
  belongs_to :user
  has_one :sport
end
