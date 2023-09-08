class Comment < ApplicationRecor
    belongs_to :user
    belongs_to :prototype

    validates :content,presence: true
end
