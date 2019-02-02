class Product < ApplicationRecord
  has_many :orders
  has_many :comments
  validates :name, presence: true

  # def self.search(search_term)
  #   if Rails.env.development?
  #   Product.where("name LIKE ?", "%#{search_term}%")
  # elsif Rails.env.production?
  #   Product.where("name ilike ?", "%#{search_term}%")
  #   end
  # end

  def self.search(search_term) #this version of the above code will allow the search of things other than the names of products, such as description or price
    search_verb = Rails.env.development? ? 'LIKE' : "iLike"
    Product.where("name #{search_verb} ? OR description #{search_verb} ?", "%#{search_term}%", "%#{search_term}%")#must have a "%#{search_term}%" for each search_verb
  end

  def average_rating
    comments.average(:rating).to_f
  end

  def views
    $redis.get("product:#{id}")
  end

  def viewed!
    $redis.incr("product:#{id}")
  end

end
