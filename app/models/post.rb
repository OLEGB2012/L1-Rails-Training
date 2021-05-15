class Post < ApplicationRecord
  has_many :comments

  def to_s
    self.subject
  end
end
