class comments < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validatables :content, presence: true
end