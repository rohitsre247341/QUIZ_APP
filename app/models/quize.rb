class Quize < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :quize_questions
    has_many :user_quizes
    has_many :leader_board
end
