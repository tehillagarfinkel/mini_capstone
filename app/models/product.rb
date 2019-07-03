class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :image_url, presence: true
  validates :description, presence: true
  validates :description, length: { maximum: 500,
                                    too_long: "500 characters is the maximum allowed" }

  def is_discounted?
    price <= 3
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
