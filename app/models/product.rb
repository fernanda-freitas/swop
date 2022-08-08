class Product < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy

  validates :name, :category, :description, :price, presence: :true
end
