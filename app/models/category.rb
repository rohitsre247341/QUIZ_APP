class Category < ApplicationRecord
    has_many :quizzes, dependent: :destroy
    has_many :questions, dependent: :destroy
    validates :category_name, presence: true
end
