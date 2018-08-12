class User < ApplicationRecord
  has_many :champions, dependent: :destroy
end
