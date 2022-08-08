class Product < ApplicationRecord
  belongs_to :user
  has_many :purchases

  validates :name, :category, :description, :price, presence: :true
end
