class ImageOption < ApplicationRecord
    belongs_to :question
    include QuestionOptionable
end
