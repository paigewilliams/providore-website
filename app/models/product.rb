class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :country_of_origin, :presence => true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
end
