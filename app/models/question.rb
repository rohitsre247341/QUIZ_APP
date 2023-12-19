class Question < ApplicationRecord
    belongs_to :user
    has_many :text_options
    has_many :image_options
    has_many :quize_questions
    belongs_to :user_quiz
    has_one :user_answer
end
