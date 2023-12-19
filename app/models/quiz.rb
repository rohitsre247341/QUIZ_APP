class Quiz < ApplicationRecord
    belongs_to :user
    has_one :leader_board
    has_many :user_quizzes
    belongs_to :category

end
