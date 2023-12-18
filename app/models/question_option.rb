class QuestionOption < ApplicationRecord
    delegated_type :ques, type: %w[TextOption ImageOption], dependent: :destroy
end
