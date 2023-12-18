class TextOption < ApplicationRecord
    belongs_to :question
    include QuestionOptionable
end
