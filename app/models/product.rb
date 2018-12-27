class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  def self.search(search_term)
    if Rails.env.development?
    Product.where("name LIKE ?", "%#{search_term}%")
  elsif Rails.env.production?
    Product.where("name ilike ?", "%#{search_term}%")
    end
  end
  #get highest rating comment first
  def highest_rating_comment
  comments.rating_desc.first
  end
  def lowest_rating_comment
  comments.rating_asc.first
  end
end
