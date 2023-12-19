class User < ApplicationRecord
    has_one :leader_board
    has_many :user_quizzes
    has_many :questions
    has_many :quizzes
end
