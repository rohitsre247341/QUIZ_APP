class QuestionOption < ApplicationRecord
    delegated_type :question_optionable, type: %w[TextOption ImageOption], dependent: :destroy
end
