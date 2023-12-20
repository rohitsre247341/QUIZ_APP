class Quiz < ApplicationRecord
    belongs_to :admin, -> {where user_type: 'Admin' }, class_name: 'User'
    has_many :leader_boards
    belongs_to :category
    has_many :quiz_questions
    has_and_belongs_to_many :questions
    has_many :user_quizzes
    has_many :users, through: :user_quizzes
    enum quiz_type: { Mock: 0, Practice: 1, General: 2, Competition: 3 }
    enum difficulty_level: { Low: 0, Medium: 1, High: 2}
end