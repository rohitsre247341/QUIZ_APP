class TextOption < ApplicationRecord
    belongs_to :question
    include Ques
end
