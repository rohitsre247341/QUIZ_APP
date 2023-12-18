module QuestionOptionable
    extend ActiveSupport::Concern
    included do
        has_one :question_option, as: :question_optionable, touch: true
    end
end