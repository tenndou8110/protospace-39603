class Prototype < ApplicationRecord
  belongs_to :user
  has_meny :comments
end
