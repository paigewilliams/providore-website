class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :rating, :content_body, :product_id, :presence => true
  
end
