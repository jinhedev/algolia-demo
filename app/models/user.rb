class User < ApplicationRecord
  has_many :champions, depedent: :destroy
end
