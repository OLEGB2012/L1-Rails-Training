class Product < ApplicationRecord
  belongs_to :category, touch: true
  has_many :line_items
  has_many :orders, through: :line_items

  scope :available, -> {where(in_stock: true)}
  scope :cheap, -> {where(price: 0..1)}
  scope :cheaper_than, ->(price) {where('price < ?', price)}

  validates :name, presence: true, length: { in: 2..20 }, uniqueness: true
  validates :price, presence: true
  validates :weight, numericality: true
  validates :in_stock, inclusion: { in: [true, false] }

  before_save :upcase_name

  private
  def upcase_name
    self.name=self.name.upcase
  end
end
