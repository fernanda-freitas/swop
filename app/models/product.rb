class Product < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name_category_and_description,
    against: {
      name: 'A',
      category: 'B',
      description: 'C'
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  belongs_to :user
  has_many :purchases, dependent: :destroy
  has_many_attached :photos

  validates :name, :category, :description, :price, presence: :true

  enum status: [:available, :sold]
end
