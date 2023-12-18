class UserQuiz < ApplicationRecord
    belongs_to :user
    belongs_to :quize
    has_many :user_answers
    has_many :questions
end
