class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { maximum: 500,
                                    too_long: "500 characters is the maximum allowed" }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  has_many :orders

  has_many :images
  # def images
  #   Image.where(id: self.id)
  # end

  has_many :category_products
  has_many :categories, through: :category_products

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
