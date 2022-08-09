class Product < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy
  has_one_attached :photo

  validates :name, :category, :description, :price, presence: :true
end
