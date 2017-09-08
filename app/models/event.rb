class Event < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :district
  belongs_to :user
  belongs_to :sport

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%")
  end
end

