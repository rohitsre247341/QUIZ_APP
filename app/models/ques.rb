module Ques 
    extend ActiveSupport::Concern
    included do
        has_one :question_option, as: :ques, touch: true
    end
end