class UserAnswer < ApplicationRecord
    belongs_to :user_quiz
    belongs_to :question
    belongs_to :selected_options, class_name: "QuestionOption"
end
