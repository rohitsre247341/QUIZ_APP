class QuestionOption < ApplicationRecord
    belongs_to :question, optional: true
    delegated_type :question_optionable, types: %w[TextOption ImageOption], dependent: :destroy
end
