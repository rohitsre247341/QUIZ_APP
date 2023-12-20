class UserQuiz < ApplicationRecord
    belongs_to :user, -> { where user_type: "Regular"}
    belongs_to :quiz
    has_many :user_answers
    has_many :questions
    validates :score, presence: true
end
