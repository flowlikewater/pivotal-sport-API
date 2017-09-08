class Sport < ApplicationRecord
  has_many :events

  def self.search(search)
    where("lower(name) LIKE ?", "%#{search.downcase}%")
  end

end
