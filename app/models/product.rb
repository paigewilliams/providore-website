class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :country_of_origin, :presence => true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.country_of_origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(3)
    )}

  def self.search(search)
    if search
      where('country_of_origin LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
