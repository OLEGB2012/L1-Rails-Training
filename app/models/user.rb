class User < ApplicationRecord
  validates :login_name, presence: true, length: { minimum: 10 }
  validates :last_name, presence: true
end
