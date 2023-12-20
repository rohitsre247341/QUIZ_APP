class Question < ApplicationRecord
    belongs_to :user
    belongs_to :user_quiz
    has_and_belongs_to_many :quizzes
    has_many :quiz_questions
    has_many :question_options
end
