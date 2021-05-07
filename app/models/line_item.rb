class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  after_initialize :set_defaults

  private
  def set_defaults
    self.quantity ||= 1
  end
end
