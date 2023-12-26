class Question < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :user_quiz, optional: true
    has_and_belongs_to_many :quizzes
    has_many :quiz_questions
    has_many :question_options
    belongs_to :category
    validates :question_text, presence: true
    validates :difficulty_level, presence: true
end
