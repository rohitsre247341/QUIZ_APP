class User < ApplicationRecord
    before_save :set_full_name
    def set_full_name
        self.full_name = "#{first_name} #{last_name}".strip
    end
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_many :leader_board,dependent: :destroy
    has_many :user_quizzes, dependent: :destroy
    has_many :questions, dependent: :nullify, foreign_key: 'admin_id'
    has_many :quizzes, dependent: :nullify, through: :user_quizzes, foreign_key: 'admin_id'
    enum user_type: { Regular: 0, Admin: 1 }
end
