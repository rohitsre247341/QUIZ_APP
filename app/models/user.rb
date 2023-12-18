class User < ApplicationRecord
    has_one :leader_board
    has_many :user_quizes
    has_many :questions
    has_many :quizes
end
