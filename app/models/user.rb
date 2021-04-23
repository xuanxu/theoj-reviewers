class User < ApplicationRecord
  validates :github, uniqueness: true
end
