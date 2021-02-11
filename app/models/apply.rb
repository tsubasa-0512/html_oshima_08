class Apply < ApplicationRecord
    has_many :questions
    has_many :questions, :through => :quetion_applies
end
