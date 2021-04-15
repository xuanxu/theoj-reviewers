class Reviewer < ApplicationRecord
  validates :github, uniqueness: true
end
