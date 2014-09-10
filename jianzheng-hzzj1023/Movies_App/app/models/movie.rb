class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :description, length: { minimum: 10 }
  validates :year_released, numericality: { only_integer: true }
  validates :year_released, numericality: { greater_than: 0}
  validates :Rating, numericality: { only_integer: true }
  validates :Rating, numericality: { greater_than: 0}
  validates :Rating, numericality: { less_than: 6}
  

  def self.search_for(query)
    where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', query: "%#{query}%")
  end

end
