class QuestionOption < ApplicationRecord
    belongs_to :question
    delegated_type :question_optionable, type: %w[TextOption ImageOption], dependent: :destroy
end
