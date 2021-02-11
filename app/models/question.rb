class Question < ApplicationRecord
    has_many :applies
    has_many :applies, :through => :quetion_applies
    validates :name, presence: true
    validates :name_kana, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :mail, presence: true
end
