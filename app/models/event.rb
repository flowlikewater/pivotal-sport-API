class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :district
  belongs_to :user
  has_one :sport
  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%")
  end
end
