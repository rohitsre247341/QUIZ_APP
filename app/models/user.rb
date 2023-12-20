class User < ApplicationRecord
    before_save :set_full_name
    def set_full_name
        self.full_name = "#{first_name} #{last_name}".strip
    end
    validates :password, presence: true
    validates :password_confirmation, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_many :leader_board, -> { where user_type: 'Regular'}, dependent: :destroy
    has_many :user_quizzes, -> {where user_type: 'Regular'}, dependent: :destroy
    has_many :questions, -> {where user_type: 'Admin' }, dependent: :nullify
    has_many :quizzes, -> {where user_type: 'Admin'}, dependent: :nullify, through: :user_quizzes
    enum user_type: { Regular: 0, Admin: 1 }
end
