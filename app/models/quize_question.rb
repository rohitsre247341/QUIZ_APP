class QuizeQuestion < ApplicationRecord
    belongs_to :quize
    belongs_to :question
end
